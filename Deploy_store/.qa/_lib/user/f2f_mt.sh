#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2f_mt.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

f2f_mt() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/f2f_m.sh)

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

    if [ "_go" == "$1" ]; then
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

    # readarray rows <"$1"

    if [ -s $1 ] && [ 1 -eq "$(file_1_laterch_2_bool "$1" "$2")" ]; then

        # touch "$1"

        t_orig=$(date +%s -r $1)
        echo -e "${BLUE}\$1 = $1${NORMAL}" #print variable

        t_copy=$(date +%s -r $2)
        # echo -e "${BLUE}\$2 = $2${NORMAL}"            #print variable

        delta=$(($t_orig - $t_copy))
        echo -e "${GREEN}\$delta = $delta${NORMAL}" #print variable

        # if [ -s $1 ] ; then
        # if [ -s $1 ] ; then
        IFS='
'

        sed -i '/'"$3"'/i '"----------------------------------------------------- "'' "$2"
        sed -i '/'"$3"'/i '"-------------------------------------- "'' "$2"

        for str in $(cat $1); do
            # echo -e "${GREEN}\$str = $str${NORMAL}" #print variable
            if [ "" == "$str" ]; then
                str=" "
            fi
            sed -i '/'"$3"'/i '"$str"'' "$2"
        done

        sed -i '/'"$3"'/i '"-------------------------------------- "'' "$2"
        sed -i '/'"$3"'/i '"----------------------------------------------------- "'' "$2"

        t_orig=$(date +%s -r $1)
        echo -e "${BLUE}\$1 = $1${NORMAL}" #print variable

        t_copy=$(date +%s -r $2)
        # echo -e "${BLUE}\$2 = $2${NORMAL}"            #print variable

        delta=$(($t_orig - $t_copy))
        echo -e "${GREEN}\$delta = $delta${NORMAL}" #print variable

        IFS=$' \t\n'
    fi
}

cd "$idir"

unset filename
