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
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/l3p_1.h"
#include "lib/io_1.h"
#include "lib/lib_1.h"
#include "lib/uni_1.h"
#include "lib/fcntl_1.h"
#include "lib/dirent_1.h"
#include "lib/sys_stat_1.h"
#include "lib/st_mode_1.h"

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>

#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <wordexp.h>

#include "connection.h"
int
main(int argc, char *argv[])
{
    struct sockaddr_un name;
    int down_flag = 0;
    int ret;
    int connection_socket;
    int data_socket;
    int result;
    char buffer[BUFFER_SIZE];
    /*
     * Удалить сокет, оставшийся после последнего
     * некорректного завершения программы.
     */
    unlink(SOCKET_NAME);
    /* Создание локального сокета. */
    connection_socket = socket(AF_UNIX, SOCK_SEQPACKET, 0);
    if (connection_socket == -1) {
        perror("socket");
        exit(EXIT_FAILURE);
    }
    /*
     * Для переносимости очищаем всю структуру, так как в некоторых
     * реализациях имеются дополнительные (нестандартные) поля.
     */
    memset(&name, 0, sizeof(struct sockaddr_un));
    /* Привязываем сокет к имени сокета. */
    name.sun_family = AF_UNIX;
    strncpy(name.sun_path, SOCKET_NAME, sizeof(name.sun_path) - 1);
    ret = bind(connection_socket, (const struct sockaddr *) &name,
               sizeof(struct sockaddr_un));
    if (ret == -1) {
        perror("bind");
        exit(EXIT_FAILURE);
    }
    /*
     * Готовимся принимать подключения. Размер очереди (backlog)
     * устанавливаем равным 20. Пока один запрос обрабатывается, другие
     * запросы смогут подождать.
     */
    ret = listen(connection_socket, 20);
    if (ret == -1) {
        perror("listen");
        exit(EXIT_FAILURE);
    }
    /* Основной цикл обработки подключений. */
    for (;;) {
        /* Ожидание входящих подключений. */
        data_socket = accept(connection_socket, NULL, NULL);
        if (ret == -1) {
            perror("accept");
            exit(EXIT_FAILURE);
        }
        result = 0;
        for(;;) {
            /* Ожидание следующего пакета с данными. */
            ret = read(data_socket, buffer, BUFFER_SIZE);
            if (ret == -1) {
                perror("read");
                exit(EXIT_FAILURE);
            }
            /* Проверяем, что буфер завершается 0. */
            buffer[BUFFER_SIZE - 1] = 0;
            /* Обработка команд. */
            if (!strncmp(buffer, "DOWN", BUFFER_SIZE)) {
                down_flag = 1;
                break;
            }
            if (!strncmp(buffer, "END", BUFFER_SIZE)) {
                break;
            }
            /* Добавляем полученную команду. */
            result += atoi(buffer);
        }
        /* Отправка результата. */
        sprintf(buffer, "%d", result);
        ret = write(data_socket, buffer, BUFFER_SIZE);
        if (ret == -1) {
            perror("write");
            exit(EXIT_FAILURE);
        }
        /* Закрытие сокета. */
        close(data_socket);
        /* Завершаем работу по команде DOWN. */
        if (down_flag) {
            break;
        }
    }
    close(connection_socket);
    /* Удаляем сокет. */
    unlink(SOCKET_NAME);
    exit(EXIT_SUCCESS);
}