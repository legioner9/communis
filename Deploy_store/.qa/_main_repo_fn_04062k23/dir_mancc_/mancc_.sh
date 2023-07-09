#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mancc_/mancc_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

mancc_() {

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
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    # echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    # echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    # echo -e "${GREEN}args = $*${NORMAL}"             #print variable

    # echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

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
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        # echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++

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

        #EXTEND++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        cd_h "$PPWD" 1>/dev/null

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

        #!function body===================================================================
        #!function body===============================================
        #!function body======================

        # manpath=${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_debug/v.4/
        manpath=/home/st/$(cat ${PATH_MAIN_REPO_FN_DIR}/dir_mancc_/mancc_copy.list)
        # echo -e "${GREEN}\$manpath = $manpath${NORMAL}" #print variable

        if [ -z "$1" ]; then
            edit_ "$manpath/cat_utils.md"
            return 0
        fi

        p2name_mancc_() {

            if [ "$1" == "p" ]; then echo "util"; fi
            if [ "$1" == "t" ]; then echo "type"; fi
            if [ "$1" == "s" ]; then echo "struct"; fi
            if [ "$1" == "c" ]; then echo "const"; fi
            if [ "$1" == "d" ]; then echo "param"; fi
            if [ "$1" == "m" ]; then echo "macros"; fi
            if [ "$1" == "h" ]; then echo "hfile"; fi
            if [ "$1" == "a" ]; then echo "any"; fi

        }

        arr_params=(p t s c d m h a)

        mach=$1

        # echo -e "${GREEN}\${arr_params[@]} = ${arr_params[*]}${NORMAL}" #print variable

        mancc_manpath_() { # $1 = manpath
            arg_manpath=$1
            mancc_prn_all_item_dir() {

                for param in "${arr_params[@]}"; do
                    echo -e "${GREEN}\$arr_params = $arr_params${NORMAL}" #print variable
                    for item in $(dd2e $arg_manpath/$(p2name_mancc_ $param)s 2>/dev/null); do
                        # echo -e "${GREEN}\$arg_manpath = $arg_manpath${NORMAL}" #print variable
                        echo $arg_manpath/$(p2name_mancc_ $param)s/$item
                    done

                done

            }

            mancc_prn_res_grep() { # $1 mach

                for name_item in $(mancc_prn_all_item_dir); do
                    if grep -q $mach <<<$name_item; then
                        echo file://$name_item/$(prs_f -ne $name_item).man

                    fi
                done

                for name_item in $(d2e "$arg_manpath"/hfiles 2>/dev/null); do
                    # echo $manpath/hfiles/$item
                    if grep -q $mach <<<$name_item; then
                        echo file://$arg_manpath/hfiles/$name_item

                    fi
                done

            }

            mancc_prn_res_grep

        }

        mancc_search_in_fns() {

            path_fns="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib"
            for item in $(dr2e $path_fns fns); do

                # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                # echo "$(grep -c "$mach" "$item")"

                if [ "$(grep -c "$mach" "$item")" -ne 0 ]; then
                    echo file://"$item"
                fi

            done

        }

        mancc_list_manpath_() {
            for path in $(f2e ${PATH_MAIN_REPO_FN_DIR}/dir_mancc_/mancc_.list); do
                # echo "/home/st/$path" #start files
                mancc_manpath_ /home/st/$path
            done

            mancc_search_in_fns
        }

        # echo -e "${HLIGHT}--- d2e $manpath/hfiles 2>/dev/null ---${NORMAL}" #start files
        # d2e "$manpath"/hfiles 2>/dev/null

        # echo -e "${HLIGHT}--- mancc_manpath_ ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/nbase/MANC ---${NORMAL}" #start files
        # mancc_manpath_ ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/nbase/MANC

        dilectus="NOT found"

        PS3="eligendi actiones: "
        select that in $(mancc_list_manpath_); do
            dilectus=$that
            break
        done

        echo $dilectus

        # edit_ $dilectus

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        #! Recurs exit after last args ($2)
        # if [ -n "$2" ]; then
        #     echo -e "${BLUE}---$2 start! exist ---${NORMAL}" #sistem info mesage
        #     "$2"

        # fi

        #!function body end--------------------------------------------
        ;;

    esac

}

# mancc_ @

unset filename
