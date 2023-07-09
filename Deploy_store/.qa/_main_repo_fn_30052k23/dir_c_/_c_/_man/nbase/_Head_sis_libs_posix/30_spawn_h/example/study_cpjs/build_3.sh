#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/30_spawn_h/example/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/

# При следующем запуске параметр командной строки используется для создания объекта 
# attributes, который указывает, что все (блокируемые) сигналы в дочернем элементе 
# должны быть заблокированы. Следовательно, попытка убить дочерний элемент с помощью 
# сигнала по умолчанию, отправленного kill(1) (т.Е. SIGTERM), завершается неудачей, 
# поскольку этот сигнал заблокирован. Следовательно, для уничтожения дочернего элемента 
# необходимо (SIGKILL не может быть заблокирован).


./main.bexe -s sleep 60 &

# [1] 7637
# $ PID of child: 7638
# $ kill 7638
# $ kill -KILL 7638
# $ Child status: killed by signal 9
# [1]+  Done                    ./a.out -s sleep 60
 

cd "$idir"