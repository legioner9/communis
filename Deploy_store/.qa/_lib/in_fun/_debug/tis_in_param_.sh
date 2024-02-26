#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/in_fun/_debug/tis_in_param_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

. "${COMMUNIS_PATH}/Deploy_store/.qa/lib/in_fun/in_param_.sh"

_fn_() {
    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable
    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    in_param_
}

_fn_ _a aaa _b bbb

unset _fn_

unset filename
