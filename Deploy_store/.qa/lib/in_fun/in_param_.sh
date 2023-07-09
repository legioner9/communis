#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/in_fun/in_param_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# Parent ENV:
# local FNN=${FUNCNAME[0]}
# local ORIGO_DIR=$PATH_FN/dir_$FNN
# local PPWD=$PWD
# local FLN=$0
# local ARGS=($@)

unset flag

in_param_() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable

    echo "#ARGS = ${#ARGS[@]}"

}

# if [ ${#ARGS[@]} ]

# unset filename
