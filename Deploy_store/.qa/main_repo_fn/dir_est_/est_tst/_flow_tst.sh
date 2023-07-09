#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_est_/est_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

fpath_res=$(p2f_ --pwd $(pwd) --path res)
fpath_dir=$(p2f_ --pwd $(pwd) --path dir)


cntl_c_cpjs | est_ /home/st/z  -d --errmes "${FNN},with args: $*, filename: $filename, line: $LINENO" >> res
cntl_c_cpjs | est_ /home/st/z  -d --errmes "${FNN}, with args: $*, filename: $filename, line: $LINENO"

cntl_c_cpjs | est_ /home/st  -f --errmes "${FNN}, with args: $*, filename: $filename, line: $LINENO" >> res
cntl_c_cpjs | est_ /home/st  -f --errmes "${FNN}, with args: $*, filename: $filename, line: $LINENO"

cntl_c_cpjs | est_ /home/st --errmes "${FNN}, with args: $*, filename: $filename, line: $LINENO" >> res
cntl_c_cpjs | est_ /home/st --errmes "${FNN}, with args: $*, filename: $filename, line: $LINENO"

cntl_c_cpjs | est_ res -f >> res
cntl_c_cpjs | est_ res -f

cntl_c_cpjs | est_ ${fpath_res} -f >> res
cntl_c_cpjs | est_ ${fpath_res} -f

cntl_c_cpjs | est_ ${fpath_dir} -d >> res
cntl_c_cpjs | est_ ${fpath_dir} -d



cd "$idir"

unset filename