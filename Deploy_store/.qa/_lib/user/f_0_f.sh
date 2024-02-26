#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/f_0_f.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_0_f() {
    # echo -e "${CYAN}---f_0_f() $*---${NORMAL}" #started functions

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "$PATH_OS/.qa/lib/user/f_0_f.sh") # FILENAME==="filename"
    path_ext=$PPW/$FNN

    # amount_arg $# 1 1

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
        return 0
    fi

    if [ "man" == "$1" ]; then
        edit_ "$path_ext".man
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$path_ext".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PPW"
        return 0
    fi

    # amount_arg $# min_args max_args

    if ! [ $# -eq 1 ]; then
        qq_exit " $# num arg != 1" "$filename" "$LINENO"
    fi

    cd_h "$PATH_OS/.qa/include_libs/_incl_lib_1/common/text_to_console"

    qq_pause "($1) create !!! in ($PWD/dir_$1/) file ($1.sh) dir (_$1) ?" "$filename" "$LINENO"

    mkdir_h_ifnotexsist_h "$PWD/dir_$1" "$filename" "$LINENO"

    cp_c "$PATH_OS/.qa/_templates_sys/for_f_0_f/f_0_f" "$PWD/dir_$1/$1.sh" "$filename" "$LINENO"

    # mkdir_h "$PWD/dir_$1/_$1" "$filename" "$LINENO"

    cp_h "$PATH_OS/.qa/_templates_sys/for_f_0_f/_00000" "$PWD/dir_$1/_$1"

    # mv_h "$PWD/dir_$1/_00000" "$PWD/dir_$1/_$1"

    sed -i 's/00000/'$1'/g' $PWD/dir_$1/$1.sh
}

export f_f

unset filename
