#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/fnend2e.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

fnend2e() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    if_v_h "$1"

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2a_arg.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
        return 0
    fi

    if [ "man" == "$1" ]; then
        edit_ "$d_name/${FUNCNAME[0]}".man
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

    count=0

    IFS='
'
    if [ -n "$3" ]; then

        for item in $(cat "$1"); do

            # echo $item
            fs=${item:0:1}
            fs2=${item:1:1}

            if [ "$fs" == "#" ] && [ "$item" != "" ] && [ "$fs2" == "$3" ] && [ ${count} -ge $2 ]; then
                res_item=${item:2}
                echo "$res_item"
                ((count++))
            fi

        done

    elif [ -z "$3" ]; then
        echo -e "${GREEN}\$2 = $2${NORMAL}" #print variable
        n=$2
        for item in $(cat "$1"); do
            # echo $item
            fs=${item:0:1}

            if [ "$fs" != "#" ] && [ "$item" != "" ] && [ "${count}" -ge "$2" ]; then
                # if [ "$fs" != "#" ] && [ "$item" != "" ] ; then

                echo "$item"

            fi
            ((count++))
        done

    fi

    IFS=$' \t\n'

}

unset filename
