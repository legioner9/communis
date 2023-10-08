#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/untar.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

untar() { #$1 string $2 delimer $3 num of sequence
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    local FNN=${FUNCNAME[0]}
    local PPW=$(prs_f -d "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/untar.sh") # FILENAME==="filename"
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

    if [ -z "$ar2" ]; then
        plt_err "\${ar1} not exist"
        return 1
    fi

    # amount_arg $# min_args max_args
    if [ "${ar1}" == "-t" ]; then

        plt_pause "do in ${PW} ? : tar czpvf - ${ar2}/ | split -d -b 25M - ${ar2}"
        cd "${PW}" || plt_exit "NOT DIR :: ${PW}"
        tar czpvf - ${ar2}/ | split -d -b 25M - ${ar2}
        return 0
    elif [ "${ar1}" == "-u" ]; then

        plt_pause "do in ${PW} ?: cat ${ar2}* | tar xzpvf -"
        cd "${PW}" || plt_exit "NOT DIR :: ${PW}"
        cat "${ar2}"* | tar xzpvf -
        return 0
    else

        plt_err "$2 not -t or -u"
        return 1
    fi
}

unset filename
