#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/fsiev_ag2e.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

fsiev_ag2e() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/fsiev_ag2e.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: string eval generator \$1 without (# | NOT_EMPTY) and contane $2 or $3 or $4 ... ( echo $line grep $2 || grep $3 ... )
            \$1 string eval generator 
            \$2 ... spread params for grep
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi

    if [ "go" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".sh
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".lst
        return 0
    fi

    if [ "test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi

    # amount_arg $# 1 1

    IFS='
'

    for str in $(eval "$1"); do

        # echo $item
        fs=${str:0:1}
        if [ "$fs" != "#" ] && [ "$str" != "" ]; then

            flag=0
            count=0

            # calculate flag for args ($2 $3 ...)
            for arg in $@; do

                # check without $1
                if [ "$count" -gt 0 ]; then
                    # echo -e "${GREEN}\$arg = $arg${NORMAL}" #print variable
                    # in $str grep
                    # echo -e "${BLUE}--- echo "${str}" | grep "${arg}" ---${NORMAL}" #sistem info mesage

                    check="$(echo "${str}" | grep "${arg}")"

                    if [ -n "${check}" ]; then
                        # accumulate result
                        flag=$((flag + 1))
                        break
                    fi

                fi

                ((count++))
            done

            if [ "${flag}" -gt 0 ]; then
                echo "$str"
            fi
        fi

    done

    IFS=$IIFS

}

cd "$idir"

unset filename
