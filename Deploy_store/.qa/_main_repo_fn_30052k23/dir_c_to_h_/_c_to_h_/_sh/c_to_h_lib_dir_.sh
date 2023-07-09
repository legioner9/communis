#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_to_h_/_c_to_h_/_sh/c_to_h_lib_dir_.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

c_to_h_lib_dir_echoFn_() { # $1 clang file for extract all fns
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    while IFS= read -r line; do
        echo "${line:5}"

    done < <(grep '*#' <"$1")
}

c_to_h_lib_dir_() {                                      # $1 - dir lib clang
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    
    if [ "man" == "$1" ]; then
        d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_to_h_/_c_to_h_/_sh/c_to_h_lib_dir_.sh)
        edit_ "$d_name/${FUNCNAME[0]}".man
        return 0
    fi
    
    if [ "test" == "$1" ]; then
        ${FUNCNAME[0]}test
        return 0
    fi
    

    echo -e "${GREEN}\$(pwd) = $(pwd)${NORMAL}" #print variable

    cd_h "$1" "$1 not exist dir in $filename"

    for item in $(d_a_stl "c"); do
        echo -e "${GREEN}\$itemc = $item${NORMAL}" #print variable
        name=$(prs_f -n "$item")
        if [ -f "$1/$item" ] && [ "$1/$name".h -ot "$1/$name".c ]; then

            rm "$1/$name".fns
            cp_h "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_to_h_/_c_to_h_/_tml/c_h.tml" "$1/$name".h
            echo -e "${ULINE}sed -i 's/00000/'"$name"'/gI' "$1/$name".h${NORMAL}" #repit commands
            sed -i 's/00000/'"$name"'/gI' "$1/$name".h
            IFS='
'
            for string in $(c_to_h_lib_dir_echoFn_ "$1/$item"); do

                echo -e "${ULINE}sed -i '4 i '"$string"'' "$1/$name".h${NORMAL}" #repit commands
                sed -i '5 i '"$string;"'' "$1/$name".h
                echo "$string" >> "$1/$name".fns

            done

        else
            echo -e "${BLUE}--- Lib Already Updated ---${NORMAL}" #sistem info mesage
        fi
    done
}

# c_to_h_lib_dir_ ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_to_h_/_c_to_h_/_examps/pr_a

unset filename
