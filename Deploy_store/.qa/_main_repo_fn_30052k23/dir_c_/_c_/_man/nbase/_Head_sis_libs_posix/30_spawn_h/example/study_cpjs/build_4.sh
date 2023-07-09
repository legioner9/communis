#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/30_spawn_h/example/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


# Когда мы пытаемся выполнить несуществующую команду в дочернем элементе, exec(3) 
# завершается с ошибкой, и дочерний элемент завершает работу со статусом 127.


./main.bexe xxxxx

# PID of child: 10190
# Child status: exited, status=127

cd "$idir"