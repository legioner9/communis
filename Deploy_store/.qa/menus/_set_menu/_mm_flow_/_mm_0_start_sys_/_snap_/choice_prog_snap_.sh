#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/choice_prog_snap_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

choice_prog_snap_() {

    arr=()
    res=()
    arr+=("zoom-client")
    arr+=("clementine")


    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        echo "$item"
        break

    done

}

export choice_prog_snap_

# choice_prog_

unset filename
