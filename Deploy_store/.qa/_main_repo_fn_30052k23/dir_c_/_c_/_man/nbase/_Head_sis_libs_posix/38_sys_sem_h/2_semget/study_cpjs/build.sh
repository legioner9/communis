#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/38_sys_sem_h/2_semget/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


# ./main.bexe

#  Программа, показанная ниже, использует semget() для создания нового
# набора семафоров или получения идентификатора существующего набора. Он генерирует ключ
# для semget() с помощью ftok(3). Первые два аргумента командной строки
# используются в качестве аргументов pathname и proj_id для ftok(3).
# Третий аргумент командной строки - это целое число, которое определяет аргумент
# nsems для semget(). Параметры командной строки можно использовать для
# указания флагов IPC_CREAT (-c) и IPC_EXCL (-x) для вызова
# semget(). Использование этой программы продемонстрировано ниже.

#  Сначала мы создаем два файла, которые будут использоваться для генерации ключей
# с помощью ftok(3), создаем два набора семафоров с использованием этих файлов, а
# затем перечисляем наборы с помощью ipcs(1):
touch mykey_ mykey2_
./main.bexe -c mykey_ p 1
./main.bexe -c mykey2_ p 2
ipcs -s

#    $ touch mykey mykey2
#    $ ./t_semget -c mykey p 1
#    ID = 9
#    $ ./t_semget -c mykey2 p 2
#    ID = 10
#    $ ipcs -s

#    ------ Semaphore Arrays --------
#    key        semid      owner      perms      nsems
#    0x7004136d 9          mtk        600        1
#    0x70041368 10         mtk        600        2

#  Далее мы продемонстрируем, что когда semctl(2) присваивается тот же ключ
#  (сгенерированный теми же аргументами, что и ftok(3)), он возвращает
# идентификатор уже существующего набора семафоров:

./main.bexe -c mykey_ p 1
#    $ ./t_semget -c mykey p 1
#    ID = 9

#  Наконец, мы демонстрируем тип коллизии, которая может возникнуть, когда
# ftok(3) присваивается другое имя пути аргументы с одинаковым
# номером индекса:

ln mykey_ link_
ls -i1 link_ mykey_
./main.bexe link_ p 1

#    $ ln mykey link
#    $ ls -i1 link mykey
#    2233197 link
#    2233197 mykey
#    $ ./t_semget link p 1       # Generates same key as 'mykey'
#    ID = 9

 

cd "$idir"