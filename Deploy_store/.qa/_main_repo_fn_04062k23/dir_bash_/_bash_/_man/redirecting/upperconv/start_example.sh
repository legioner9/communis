#!/bin/bash
cd ${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/redirecting/upperconv
. upperconv.sh input-file output-file

cat input-file
echo to_uppercase:
cat output-file
