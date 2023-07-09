#!/usr/bin/env bash

cd ${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/exec || qq_exit

exec 0<data.txt

count=0
while read line; do
    echo "Line ${count}: ${line}"
    count=$((count++))
done
