#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/main_to_dotfnm.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

main_to_dotfnm() {
        echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/
        path_ext=$PPW$FNN

        if [ "man" == "$1" ]; then
            edit_ "$path_ext".man
            return 0
        fi
    
        if [ "lst" == "$1" ]; then
            edit_ "$path_ext".lst
            return 0
        fi
    
        if [ "go" == "$1" ]; then
            edit_ "$PPW"
            return 0
        fi

    dir_name=$(pwd)
    path_main="$dir_name"/main.c
    rm -f exec.fnm
    while IFS= read -r line; do
        echo "$line" >> exec.fnm

    done < <(grep '*#' <"$path_main")
}
unset filename
