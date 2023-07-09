#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cp__/cp__tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"
# +tst

echo -e "${BLUE}--- rr_ ---${NORMAL}" #sistem info mesage
rr_

echo -e "${HLIGHT}--- touch a ---${NORMAL}" #start files
echo -e "${HLIGHT}--- touch b ---${NORMAL}" #start files
# f 1 1
mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 

exestr="cp__ a b -f1 -f2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# ef 1 1
exestr="cp__ a b -e1 -e2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# f 0 1
echo -e "${HLIGHT}--- rm a ---${NORMAL}" #start files
mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 
rm a &>/dev/null 
ls

exestr="cp__ a b -nf1 -f2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# ef 0 1

exestr="cp__ a b -ne1 -e2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# f 1 0
echo -e "${HLIGHT}--- touch a ---${NORMAL}" #start files
echo -e "${HLIGHT}--- rm b ---${NORMAL}" #start files

mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null  
rm b &>/dev/null 
ls

exestr="cp__ a b -f1 -nf2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# ef 1 0
echo -e "${HLIGHT}--- touch a ---${NORMAL}" #start files
echo -e "${HLIGHT}--- rm b ---${NORMAL}" #start files

mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 
rm b &>/dev/null 
ls

exestr="cp__ a b -e1 -ne2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# d 1 1
echo -e "${HLIGHT}--- mkdir d1 ---${NORMAL}" #start files
echo -e "${HLIGHT}--- mkdir d2 ---${NORMAL}" #start files

mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 
ls

exestr="cp__ -r d1/ d2/ -d1 -d2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# ed 1 1
exestr="cp__ -r d1/ d2/ -e1 -e2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# d 0 1
echo -e "${HLIGHT}--- rm -r d1 ---${NORMAL}" #start files
mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 
rm -r d1 &>/dev/null 
ls

exestr="cp__ -r d1/ d2/ -nd1 -d2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# ed 0 1
exestr="cp__ -r d1/ d2/ -ne1 -e2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# d 1 0
echo -e "${HLIGHT}--- mkdir d1 ---${NORMAL}" #start files
echo -e "${HLIGHT}--- rm -r d2 ---${NORMAL}" #start files

mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 
rm -r d2 &>/dev/null 
ls

exestr="cp__ -r d1/ d2/ -d1 -nd2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# ed 1 0
echo -e "${HLIGHT}--- mkdir d1 ---${NORMAL}" #start files
echo -e "${HLIGHT}--- rm -r d2 ---${NORMAL}" #start files

mkdir d1 &>/dev/null 
mkdir d2 &>/dev/null 
touch a &>/dev/null 
touch b &>/dev/null 
rm -r d2 &>/dev/null 
ls

exestr="cp__ "-r -f" d1/ d2/ -e1 -ne2"
echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
$exestr
ls

# -tst
# exestr="cp__ -r d1/ d2/ -d1 -nd2"
# echo -e "${GREEN}\$exestr = $exestr${NORMAL}" #print variable
# $exestr

cd "$idir"

unset filename
