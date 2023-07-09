#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_s_t_/s_t_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

s_t_() {
    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable


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

        # # incude fn_libs------------------------------------------
        # c_up "$ORIGO_DIR/_$FNN/_sh"

        # # UP in_file_variables------------------------------------
        # path_dir_in=$ORIGO_DIR/_$FNN/_in

        # cd_h $path_dir_in

        # unset _f2a_
        # unset item
        # args_arr_name=()
        # for item in *; do
        #     ext=${item##*.}
        #     name=${item%.*}
        #     cname=${name:1}
        #     # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
        #     # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
        #     if [ $ext = "var" ]; then
        #         args_arr_name+=($cname)
        #         # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        #         # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
        #         f2a $path_dir_in/$item
        #         # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable

        #         declare $cname="${_f2a_[*]}"

        #         unset _f2a_
        #         unset item
        #     fi

        # done

        # echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

        # #!function body start--------------------------------------------
        # echo -e "${GREEN}\${res_[@]} = ${res_[*]}${NORMAL}" #print variable
        # echo -e "${GREEN}\${arr_[@]} = ${arr_[*]}${NORMAL}" #print variable

        # IFS=', ' read -r -a arr <<<"${arr_[0]}"
        # IFS=', ' read -r -a res <<<"${res_[0]}"

        # unset item
        # echo "arr:"
        # for item in ${arr[@]}; do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # done

        # unset item
        # echo "res:"
        # for item in ${res[@]}; do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # done
        # unset item

        cd_h "$PPWD"

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
        if [ -n "$1" ]; then
            f_tag=$1
        else
            unset _choice_tag_
            choice_tag
            f_tag=$_choice_tag_
            unset _choice_tag_
        fi

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
            # qq_pause " \${ARGS[0]} = ${ARGS[0]} "
            if [ -z "${ARGS[0]}" ]; then
                echo "add search(y)?"
                read -r yes
            else
                yes="n"
            fi

            # echo -e "${GREEN}\$yes = $yes${NORMAL}" #print variable

            if [ $yes = "y" ]; then
                # qq_pause "$yes = y"
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
                # echo -e "${GREEN}\${recurs_arr[@]} = ${recurs_arr[*]}${NORMAL}" #print variable
                arr_name_fn=()

                if ! [ ${#recurs_arr[@]} = 0 ]; then
                    arr_name_fn=(${recurs_arr[@]})

                    recurs_ @
                else
                    "Search is empty"
                fi
            fi

        }

        recurs_

        echo -e "${GREEN} from s_t_ \${arr_name_fn[@]} = ${arr_name_fn[*]}${NORMAL}" #print variable

        _s_t_=(${arr_name_fn[@]})

        export _s_t_

        #--------record _res.res

        # path_res="${PATH_MAIN_REPO_FN_DIR}/dir_s_t_/_s_t_/_out/_res.res"
        # echo -e "${GREEN}\$path_res = $path_res${NORMAL}" #print variable

        # cat /dev/null > "$path_res"

        # unset item
        # for item in "${arr_name_fn[@]}"; do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

        # echo "$item" >> "$path_res"

        # done

        #======================
        #===============================================
        #===================================================================

        #! Recurs exit after last args ($2)
        if [ -n "$2" ]; then
            echo -e "${BLUE}---$2 start! exist ---${NORMAL}" #sistem info mesage
            "$2"

        fi

        #!function body end--------------------------------------------
        ;;

    esac

}

# s_t_ @

unset filename
