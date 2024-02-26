#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/prepeared_to_tst/word_all_tst.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

word_all_tst() { # DOTCONSTRAIN $1 dir for run all .tst $2 match

    dir=$1
    # find_ext "$dir" "tst"

    flag=1
    for item_ in $(find_ext "$dir" "word"); do
        echo -e "${GREEN}\$item_ = file://$item_${NORMAL}" #print variable

        echo -e "${BLUE}------${NORMAL}" #sistem info mesage
        if [ -n "$2" ]; then
            cat "$item_" | grep "$2"
        else
            cat "$item_"
        fi
        echo -e "${BLUE}------${NORMAL}" #sistem info mesage
        # fn() {
        #     . "$item_"
        # }
        # echo -e "${GREEN}\$fn_name = $fn_name${NORMAL}" #print variable
        # echo "\$(. "$item_") = $(. "$item_")"
        # if [ "$(. "$item_")" != "" ]; then
        # if ! [ "$(. "$item_")" ]; then
        # echo "after run $n_fn FALSE" >&2
        # echo -e "${GREEN}\$item_ = $item_${NORMAL}" #print variable
        # flag=0
        # echo -e "${GREEN}\$flag = $flag${NORMAL}" #print variable
        # fi
        # fi
    done

    # if [ 0 -eq $flag ]; then
    #     echo "IN $dir tst FAIL" >&2
    # fi

    # if [ 1 -eq $flag ]; then
    #     echo "IN $dir tst TRUE"
    # fi

}

unset filename
