#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/cr_f_tst/_wtf_vi_iter_value.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

. _start_deb_a.sh "#"
. _start_deb_a.sh "~"
. _start_deb_a.sh "!"
. _start_deb_a.sh "@"
. _start_deb_a.sh "$" # $weqwe
. _start_deb_a.sh "%"
. _start_deb_a.sh "^" # weqwe^
. _start_deb_a.sh "&"
. _start_deb_a.sh "*"
. _start_deb_a.sh "("
. _start_deb_a.sh ")"
cntl_c_cpjs | . _start_deb_a.sh "-"
. _start_deb_a.sh "_"
. _start_deb_a.sh "+"
. _start_deb_a.sh "="
. _start_deb_a.sh "{"
. _start_deb_a.sh "{"
. _start_deb_a.sh "["
. _start_deb_a.sh "}"
. _start_deb_a.sh "]"
. _start_deb_a.sh ";"
. _start_deb_a.sh ":"
. _start_deb_a.sh "\""
. _start_deb_a.sh "'"
. _start_deb_a.sh "\\"
. _start_deb_a.sh "|"
. _start_deb_a.sh "<"
. _start_deb_a.sh ">"
. _start_deb_a.sh ","
. _start_deb_a.sh "."
. _start_deb_a.sh "?"
. _start_deb_a.sh "/"
. _start_deb_a.sh ";"
. _start_deb_a.sh "\`"
. _start_deb_a.sh "№"
. _start_deb_a.sh "[dqd]"
. _start_deb_a.sh "{erverf}"
. _start_deb_a.sh "<cascsd>"
. _start_deb_a.sh ";cascsd;"
. _start_deb_a.sh "'cascsd'"
. _start_deb_a.sh "&cascsd&"
. _start_deb_a.sh "!cascsd!"
. _start_deb_a.sh "::cascsd::"
. _start_deb_a.sh "/cascsd/"
. _start_deb_a.sh "#cascsd#"




cd "$idir"

unset filename