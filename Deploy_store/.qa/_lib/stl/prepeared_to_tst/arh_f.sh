#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/arh_f.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

arh_f() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    if [ "$1" = "test" ]; then
        prs_f_test "$@"

    elif
        [ "$1" = "-h" ]
    then

        echo -e "${BLUE}------------------------ 
Help This Function
----------------------${NORMAL}" #sistem info mesage

    else

        if [ $# -ne 3 ]; then
            qq_exit "mast be 3 parameters : illegal number of parameters"
        fi

        if [ "$1" = "-ci" ]; then
            if tar -cvf "$2".tar "$3" 1>/dev/null; then

                if gzip "$2".tar; then
                    rm -fr "$3"
                fi
            fi

        elif [ "$1" = "-xi" ]; then

            if gunzip "$2".tar.gz; then

                if tar -xvf "$2".tar -C "$3" 1>/dev/null; then
                    rm "$(pwd)"/"$2".tar
                else
                    echo -e "${BLUE}--- tar -xvf "$2".tar -C "$3" ---${NORMAL}" #sistem info mesage
                fi
            else
                echo -e "${BLUE}--- gunzip "$2".tar.gz FAIL ---${NORMAL}" #sistem info mesage
            fi
        # elif [ "$1" = "-a" ]; then
        #     echo "${name_ext%.*}"

        # elif [ "$1" = "-e" ]; then
        #     echo "${name_ext##*.}"

        else
            qq_exit "$1: parameter mayby: -c [create] -x [extract] "

        fi

    fi
}

arh_f_test() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
}

#up_lib_git ${FUNCNAME[0]}

unset filename
