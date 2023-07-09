#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/check_dir_tst.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

check_dir_tst() { 
    # $1 fullname whear call this function dir file in dir for check ALL .sh fnfile 
 

    # echo -e "${CYAN}---c_test() \$1 = $1---${NORMAL}" #started functions
    # IFS=$IIFS

    # cd_h "$1" "$filename" "$LINENO"

    dir="$(prs_f -d "$1")"
    _dir_sh_=()
    cd "$dir"

    for item in *; do

        local item_path=$dir/$item
        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" = "sh" ]; then
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            _dir_sh_+=("$item_path")
        fi
    done

    # echo -e "${GREEN}\${_dir_sh_[@]} = ${_dir_sh_[*]}${NORMAL}" #print variable

    flag=1

    for item_ in "${_dir_sh_[@]}"; do
        . "$item_"
        name_ext=$(prs_f -ne "$item_")
        fn_name=$(prs_f -n "$name_ext")

        # echo -e "${GREEN}\$fn_name = $fn_name${NORMAL}" #print variable
        if ! [ "$("$fn_name" "test")" ]; then
            # echo "after run $n_fn FALSE" >&2
            flag=0
        fi
    done

    if [ 0 -eq $flag ]; then
        echo "IN $1 tst FAIL" >&2
    fi

    if [ 1 -eq $flag ]; then
        echo "IN $1 tst TRUE"
    fi
    unset flag
}

export check_dir_tst

unset filename
