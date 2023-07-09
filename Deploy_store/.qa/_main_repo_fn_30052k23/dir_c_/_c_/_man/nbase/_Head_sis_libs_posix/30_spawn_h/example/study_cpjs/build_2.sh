#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/30_spawn_h/example/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/

# При следующем запуске параметр командной строки используется для создания объекта 
# file actions, который закрывает стандартный вывод в дочернем элементе. 
# Следовательно, date(1) завершается ошибкой при попытке выполнить вывод и завершается со статусом 1.

./main.bexe -c date

# PID of child: 7636
# date: write error: Bad file descriptor
# Child status: exited, status=1
 

cd "$idir"