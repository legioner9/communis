#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_p2v_/p2v_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# p2v_ --ptr [p1] --level [1,2,3]

p1=v1_p2
v1_p2=v2_p3
v2_p3=v3

y1=z1_p2

>res

cntl_c_cpjs | p2v_ --ptr p1 --level 1 &>>res
cntl_c_cpjs | p2v_ --ptr p1 --level 2 &>>res
cntl_c_cpjs | p2v_ --ptr p1 --level 3 &>>res

cntl_c_cpjs | p2v_ --ptr p1 --level 4 &>>res

cntl_c_cpjs | p2v_ --ptr y1 --level 1 &>>res
cntl_c_cpjs | p2v_ --ptr y1 --level 2 &>>res
cntl_c_cpjs | p2v_ --ptr y1 --level 3 &>>res


cd "$idir"

unset filename
