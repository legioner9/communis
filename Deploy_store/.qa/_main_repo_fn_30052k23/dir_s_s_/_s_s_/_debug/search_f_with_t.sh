#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/search_f_with_t.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

search_f_with_t() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    unset _choice_tag_
    choice_tag
    f_tag=$_choice_tag_
    unset _choice_tag_

    echo -e "${GREEN}\$f_tag = $f_tag${NORMAL}" #print variable

    arr_name_fn=()
    for item in $(grep -r -w $f_tag "$PATH_FN"); do

        d=$PATH_FN/dir_
        del_pref=$(echo "$item" | sed 's|'$d'||')

        arr_pref=${del_pref//\// }

        read -r -a array <<<"$arr_pref"

        name_fn="${array[0]}"

        arr_name_fn+=("$name_fn")

    done

    echo -e "${GREEN}\${arr_name_fn[@]} = ${arr_name_fn[*]}${NORMAL}" #print variable

    recurs_() {
        echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

        echo "add search(y)?"
        read yes

        if [ $yes = "y" ]; then
            unset _choice_tag_
            choice_tag
            f_tag=$_choice_tag_
            unset _choice_tag_

            recurs_arr=()
            for name_fn_ in "${arr_name_fn[@]}"; do

                if_d_h "$PATH_FN/dir_$name_fn_/_$name_fn_/_config/"

                rr=$(grep -r -w "$f_tag" "$PATH_FN/dir_$name_fn_/_$name_fn_/_config/")

                if ! [[ "$rr" == "" ]]; then

                    recurs_arr+=("$name_fn_")

                fi
            done
            echo -e "${GREEN}\${recurs_arr[@]} = ${recurs_arr[*]}${NORMAL}" #print variable
            arr_name_fn=()

            if ! [ ${#arr_name_fn[@]} = 0 ]; then
                arr_name_fn=(${recurs_arr[@]})
                
                recurs_ @
            else
                "Search is empty"
            fi
        fi

    }

    recurs_

    echo -e "${GREEN}\${arr_name_fn[@]} = ${arr_name_fn[*]}${NORMAL}" #print variable

    # AFTER all choice result : arr_name_fn[@]

    if ! [ ${#arr_name_fn[@]} = 0 ]; then

        PS3="eligendi actiones: "

        select item in "${arr_name_fn[@]}"; do

            dilectus=$item
            break

        done

        echo "Will be call $dilectus, enter args:"
        read -r args
        $dilectus "$args"
    else
        "Search is empty"
    fi
}

unset filename
