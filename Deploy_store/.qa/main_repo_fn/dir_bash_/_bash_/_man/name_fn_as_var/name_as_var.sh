#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bash_/_bash_/_man/name_fn_as_var/name_as_var.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

 name="mfn"


 declare _"$name"(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
}
_mfn
#up_lib_git ${FUNCNAME[0]}

unset filename