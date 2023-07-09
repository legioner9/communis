#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// LIB FROM ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/dirent_1.h"
#include "lib/fcntl_1.h"
#include "lib/io_1.h"
#include "lib/l3p_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lib_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#define N 6

#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>

#include <dirent.h>
#include <fcntl.h>
#include <unistd.h>
#include <wordexp.h>

#include <aio.h>
#include <signal.h>

#define BUF_SIZE 20 /* размер буферов для операций чтения */
#define errExit(msg)                                                           \
  do {                                                                         \
    perror(msg);                                                               \
    exit(EXIT_FAILURE);                                                        \
  } while (0)
#define errMsg(msg)                                                            \
  do {                                                                         \
    perror(msg);                                                               \
  } while (0)
struct ioRequest { /* определяемая приложением структура для
                      слежения за запросами ввода-вывода */
  int reqNum;
  int status;
  struct aiocb *aiocbp;
};
static volatile sig_atomic_t gotSIGQUIT = 0;

/* при получении SIGQUIT мы пытаемся отменить
   все невыполненные запросы ввода-вывода */
static void /* обработчик SIGQUIT */
quitHandler(int sig) {
  gotSIGQUIT = 1;
}
#define IO_SIGNAL                                                              \
  SIGUSR1 /* сигнал, уведомляющий о завершении    \
             ввода-вывода */

static void /* обработчик завершения ввода-вывода */
aioSigHandler(int sig, siginfo_t *si, void *ucontext) {
  write(STDOUT_FILENO, "I/O completion signal received\n", 31);
  /* соответствующая структура ioRequest была бы доступна как
         struct ioRequest *ioReq = si->si_value.sival_ptr;
     а файловый дескриптор был бы доступен через
         ioReq->aiocbp->aio_fildes */
}

int main(int argc, char *argv[]) {
  struct ioRequest *ioList;
  struct aiocb *aiocbList;
  struct sigaction sa;
  int s, j;
  int numReqs; /* общее количество устанавливаемых в очередь
                  запросов ввода-вывода */
  int openReqs; /* количество выполняющихся запросов
                   ввода-вывода */
  if (argc < 2) {
    fprintf(stderr, "Использование: %s <имя_файла> <имя_файла>...\n", argv[0]);
    exit(EXIT_FAILURE);
  }
  numReqs = argc - 1;
  /* выделяем место под массивы */
  ioList = calloc(numReqs, sizeof(struct ioRequest));
  if (ioList == NULL)
    errExit("calloc");
  aiocbList = calloc(numReqs, sizeof(struct aiocb));
  if (aiocbList == NULL)
    errExit("calloc");
  /* указываем обработчики SIGQUIT и сигнала завершения ввода-вывода */
  sa.sa_flags = SA_RESTART;
  sigemptyset(&sa.sa_mask);
  sa.sa_handler = quitHandler;
  if (sigaction(SIGQUIT, &sa, NULL) == -1)
    errExit("sigaction");
  sa.sa_flags = SA_RESTART | SA_SIGINFO;
  sa.sa_sigaction = aioSigHandler;
  if (sigaction(IO_SIGNAL, &sa, NULL) == -1)
    errExit("sigaction");
  /* открываем каждый файл, заданный в командной строке и ставим в
     очередь запрос на чтение полученного файлового дескриптора */
  for (j = 0; j < numReqs; j++) {
    ioList[j].reqNum = j;
    ioList[j].status = EINPROGRESS;
    ioList[j].aiocbp = &aiocbList[j];
    ioList[j].aiocbp->aio_fildes = open(argv[j + 1], O_RDONLY);
    if (ioList[j].aiocbp->aio_fildes == -1)
      errExit("open");
    printf("opened %s on descriptor %d\n", argv[j + 1],
           ioList[j].aiocbp->aio_fildes);
    ioList[j].aiocbp->aio_buf = malloc(BUF_SIZE);
    if (ioList[j].aiocbp->aio_buf == NULL)
      errExit("malloc");
    ioList[j].aiocbp->aio_nbytes = BUF_SIZE;
    ioList[j].aiocbp->aio_reqprio = 0;
    ioList[j].aiocbp->aio_offset = 0;
    ioList[j].aiocbp->aio_sigevent.sigev_notify = SIGEV_SIGNAL;
    ioList[j].aiocbp->aio_sigevent.sigev_signo = IO_SIGNAL;
    ioList[j].aiocbp->aio_sigevent.sigev_value.sival_ptr = &ioList[j];
    s = aio_read(ioList[j].aiocbp);
    if (s == -1)
      errExit("aio_read");
  }
  openReqs = numReqs;
  /* цикл, отслеживание состояние запросов ввода-вывода */
  while (openReqs > 0) {
    sleep(3); /* задержка между проверками */
    if (gotSIGQUIT) {
      /* при получении SIGQUIT пытаемся отменить каждый
         невыполненный запрос ввода-вывода и показываем состояние,
         возвращаемое при отмене запроса */
      printf("got SIGQUIT; canceling I/O requests: \n");
      for (j = 0; j < numReqs; j++) {
        if (ioList[j].status == EINPROGRESS) {
          printf("    Request %d on descriptor %d:", j,
                 ioList[j].aiocbp->aio_fildes);
          s = aio_cancel(ioList[j].aiocbp->aio_fildes, ioList[j].aiocbp);
          if (s == AIO_CANCELED)
            printf("I/O canceled\n");
          else if (s == AIO_NOTCANCELED)
            printf("I/O not canceled\n");
          else if (s == AIO_ALLDONE)
            printf("I/O all done\n");
          else
            errMsg("aio_cancel");
        }
      }
      gotSIGQUIT = 0;
    }
    /* проверяем состояние каждого запроса ввода-вывода, которые
       ещё не завершились */
    printf("aio_error():\n");
    for (j = 0; j < numReqs; j++) {
      if (ioList[j].status == EINPROGRESS) {
        printf("    for request %d (descriptor %d): ", j,
               ioList[j].aiocbp->aio_fildes);
        ioList[j].status = aio_error(ioList[j].aiocbp);
        switch (ioList[j].status) {
        case 0:
          printf("I/O succeeded\n");
          break;
        case EINPROGRESS:
          printf("In progress\n");
          break;
        case ECANCELED:
          printf("Canceled\n");
          break;
        default:
          errMsg("aio_error");
          break;
        }
        if (ioList[j].status != EINPROGRESS)
          openReqs--;
      }
    }
  }
  printf("All I/O requests completed\n");
  /* проверяем возвращаемое состояние всех запросов ввода-вывода */
  printf("aio_return():\n");
  for (j = 0; j < numReqs; j++) {
    ssize_t s;
    s = aio_return(ioList[j].aiocbp);
    printf("    for request %d (descriptor %d): %zd\n", j,
           ioList[j].aiocbp->aio_fildes, s);
  }
  exit(EXIT_SUCCESS);
}
