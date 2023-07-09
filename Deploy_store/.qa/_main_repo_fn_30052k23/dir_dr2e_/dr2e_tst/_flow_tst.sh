#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_dr2e_/dr2e_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# dr2e_ < dat > res

work_dir=$(pwd)/_v1

# . $(pwd)/_v1/start_1.sh &> res 
> res
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} ---${NORMAL}" &>> res #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir}  &>> res 
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} a ---${NORMAL}" &>> res #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir} a  &>> res 
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} b ---${NORMAL}" &>> res #sistem info mesage 
cntl_c_cpjs | dr2e_ ${work_dir} b  &>> res 
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir} c ---${NORMAL}" &>> res #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir} c  &>> res 
echo -e "${BLUE}--- cntl_c_cpjs | dr2e_ ${work_dir}/not_exist a ---${NORMAL}" &>> res #sistem info mesage
cntl_c_cpjs | dr2e_ ${work_dir}/not_exist a  &>> res 

cd "$idir"

unset filename