## getpid

 /* ch09-reparent.c --- показывает, что getppid() может менять значения */

 #include <stdio.h>
 #include <errno.h>
 #include <sys/types.h>
 #include <unistd.h>

 /* main --- осуществляет работу */

int main(int argc, char **argv)
{
pid_t pid, old_ppid, new_ppid;
pid_t child, parent;

parent = getpid(); /* перед fork() */

if ((child = fork()) < 0) {
 fprintf(stderr, "%s: fork of child failed: %sn",
  argv[0], strerror(errno));
 exit(1);
} else if (child == 0) {
 old_ppid = getppid();
 sleep(2); /* см. главу 1*/
 new_ppid = getppid();
} else {
 sleep(1);
 exit(0); /* родитель завершается после fork() */
}

/* это выполняет только порожденный процесс */
printf("Original parent: %dn", parent);
printf("Child: %dn", getpid());
printf("Child's old ppid: %dn", old_ppid);
printf("Child's new ppid: %dn", new_ppid);

exit(0);
}