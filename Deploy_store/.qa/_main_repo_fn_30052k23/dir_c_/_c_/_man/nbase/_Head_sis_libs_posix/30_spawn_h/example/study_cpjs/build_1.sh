#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Head_sis_libs_posix/30_spawn_h/example/study_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/

# При первом запуске команда date(1) выполняется в дочернем элементе, 
# а вызов posix_spawn() не использует действия с файлами или объекты атрибутов.

./main.bexe date

# PID of child: 7634
# Tue Feb  1 19:47:50 CEST 2011
# Child status: exited, status=0

 

cd "$idir"