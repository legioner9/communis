#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_s_s_/s_s_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

s_s_v1() {
    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable
    FNN=${FUNCNAME[0]}
    ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_s_s_
    PPWD=$PWD
    FLN=$0
    ARGS=$@

    arr=()
    res=()
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")

    case $1 in

    "_0")
        echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
        magic_nm_ "$FNN"

        ;;

    # "${arr[3]}")
    #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
    #     ${res[3]}
    # ;;

    *)
        echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

        # incude fn_libs------------------------------------------
        c_up "$ORIGO_DIR/_$FNN/_sh"

        # UP in_file_variables------------------------------------
        path_dir_in=$ORIGO_DIR/_$FNN/_in

        cd_h $path_dir_in

        unset _f2a_
        unset item
        args_arr_name=()
        for item in *; do
            ext=${item##*.}
            name=${item%.*}
            cname=${name:1}
            # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
            # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
            if [ $ext = "var" ]; then
                args_arr_name+=($cname)
                # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
                f2a $path_dir_in/$item
                # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable

                declare $cname=${_f2a_[@]}

                unset _f2a_
                unset item
            fi

        done

        echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

        #!function body start--------------------------------------------
        echo -e "${GREEN}\${var[@]} = ${var[*]}${NORMAL}" #print variable
        echo -e "${GREEN}\${tml[@]} = ${tml[*]}${NORMAL}" #print variable

        #!choiсe_arg_from_arr>>>>>>>>>>>>>>>>>

        # PS3="eligendi actiones (var): "
        # select item in "${var[@]}";do
        #     var_=$item
        #     break
        # done

        # PS3="eligendi actiones (tml): "
        # select item in "${tml[@]}";do
        #     tml_=$item
        #     break
        # done

        #!end choiсe_arg_from_arr>>>>>>>>>>>>>
        #===================================================================
        #===============================================
        #======================

        # choice_type_search

        choice_type_search() {

            arr=()
            res=()
            arr+=("search by tag")
            res+=("choice_tag")
            arr+=("search by word")
            res+=("choice_word")
            # arr+=("ls -a - отображать все файлы, включая скрытые")
            # res+=("ls -a $*")

            PS3="eligendi actiones: "

            select item in "${arr[@]}"; do

                dilectus=$item
                break

            done

            case $dilectus in

            "${arr[0]}")
                echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
                unset _choice_tag_
                ${res[0]}
                f_tag=$_choice_tag_
                unset _choice_tag_

                ;;

            "${arr[1]}")
                echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
                unset _choice_word_
                ${res[1]}
                f_tag=$_choice_word_
                unset _choice_word_
                ;;

                #    "${arr[2]}")
                #         echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
                #         ${res[2]}
                #     ;;

            *)
                echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
                ;;

            esac

        }

        # unset _choice_tag_
        # choice_tag
        # f_tag=$_choice_tag_
        # unset _choice_tag_

        echo -e "${GREEN}\$f_tag = $f_tag${NORMAL}" #print variable

        arr_name_fn=()
        for item in $(grep -r -w $f_tag "${PATH_MAIN_REPO_FN_DIR}"); do

            d=${PATH_MAIN_REPO_FN_DIR}/dir_
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

                    if_d_h "${PATH_MAIN_REPO_FN_DIR}/dir_$name_fn_/_$name_fn_/_config/"

                    rr=$(grep -r -w "$f_tag" "${PATH_MAIN_REPO_FN_DIR}/dir_$name_fn_/_$name_fn_/_config/")

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

        #======================
        #===============================================
        #===================================================================
        #!function body end--------------------------------------------
        ;;

    esac

}

# s_s_ @

unset filename
