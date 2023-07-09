#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_nod_/_nod_/_debug/self_tst/self_tst_1.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd  "$(prs_f -d $filename)" -d1
g_args=($(garg2e_ "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(garg2e_ "${ARGS[@]}"); do
[[ 1 -eq ${verbose} ]] || echo "local $strex"
eval $strex
done
_(){
echo "empty _deb in $filename"
# . $filename" arg1 arg2
}
if [ "_deb" == "$1" ]; then
_
return 0
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
echo -e "# create tst flow at dis_tst and dis2_tst
# rename exec._{ext} to exec.{ext}
# . start_check_distst.sh for tst all files" >howuse.man
echo -e "# in deb_1.sh
## delete dir_1
## create directory "dir_1/dis" with envariment for exec._distst process
## create directory "dir_1/dis2" with envariment for exec._distst process
## create check_distst.list in dir_1
## create start_check_distst.sh in dir_1" >whatshappenig.man
#rr_
#wrp_fifs1_ rm -rf dir_1 -cd1
wrp_fifs1_ mkdir dir_1 -cnd1
wrp_fifs1_ cd dir_1 -d1
cr_tst_dir_ --name dis --ext distst
cr_tst_dir_ --name dis2 --ext distst
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
