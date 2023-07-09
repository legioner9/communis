#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/_/_debag/comand.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

com="fs_"

command -v "$com" >/dev/null 2>&1 || qq_pause "command $com Not exist"

if_c_h_run() {
    if_v_h "$1"
    if ! test_c "$1"; then
        qq_exit "command $1 not exist"
    else
        "$1"
    fi

}

test_c_() {
    command -v "$1" >/dev/null 2>&1
}

THIS_ARG1=$PWD

if test_c_ "gvim"; then
    gvim -v "$THIS_ARG1"
elif test_c_ "code"; then
    code "$THIS_ARG1"
elif test_c_ "vim"; then
    vim "$THIS_ARG1"
else
    qq_exit "editor not enabled"
fi

test_c "gvim"

# if test_c_ "gvim -v $THIS_ARG1"; then
#    ls
# elif test_c_ "code -v $THIS_ARG1"; then
#     code "$THIS_ARG1"
# elif test_c_ "vim -v $THIS_ARG1"; then
#     vim "$THIS_ARG1"
# else
#     qq_exit "editor not enabled"
# fi
unset filename
