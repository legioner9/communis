#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_d_empty.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

is_d_empty() { #$1 string $2 delimer $3 num of sequence
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/is_d_empty.sh") # FILENAME==="filename"
    path_ext=$PPW/$FNN

    # amount_arg $# 1 1

    local ar1="$1"
    local ar2="$2"
    local PW
    PW=$(pwd)

    if [ "-h" == "${ar1}" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
                \$1 dir for tar or untar in PARTS
            CNTL: 
                -t tar dir to part 25M as dir00, dir01 ... files 
                -u untar all dir<n> to dir
            FLOW:${NORMAL}"
        return 0
    fi

    if [ "man" == "${ar1}" ]; then
        edit_ "$path_ext".man
        return 0
    fi

    if [ "lst" == "${ar1}" ]; then
        edit_ "$path_ext".lst
        return 0
    fi

    if [ "_go" == "${ar1}" ]; then
        edit_ "$PPW"
        return 0
    fi

    if [ -z "${ar1}" ]; then
        plt_err "\${ar1} not exist"
        return 1
    fi

    # amount_arg $# min_args max_args
    # echo -e "${GREEN}\$ar1 = $ar1${NORMAL}" #print variable
    # echo -e "${GREEN}\$ar2 = $ar2${NORMAL}" #print variable

    local files_is_d_empty

    if [ -d "${ar1}" ] && files_is_d_empty=$(ls -qAH "${ar1}") && [ -z "${files_is_d_empty}" ]; then
        # printf '%s\n' "${ar1} is an empty directory"
        return 0
    else
        # printf >&2 '%s\n' "${ar1} is not empty, or is not a directory" \
        #     "or is not readable or searchable in which case" \
        #     "you should have seen an error message from ls above."
        return 1
    fi
}

unset filename
