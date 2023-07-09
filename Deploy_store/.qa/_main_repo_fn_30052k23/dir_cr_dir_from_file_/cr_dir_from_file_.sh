#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_cr_dir_from_file_/cr_dir_from_file_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_dir_from_file_() {
    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    if [ "man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
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
    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}"     #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"              #print variable
    echo -e "${GREEN}file = $0${NORMAL}"                 #print variable
    echo -e "${GREEN}args = $@${NORMAL}"                 #print variable

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

        #!function body===================================================================
        #!function body===============================================
        #!function body======================

        #! debag
        # cd_h "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_dir_from_file_/_cr_dir_from_file_/_debug"
        #!

        path_md="$PPWD"/_cr_dir_from_file_.md

        if_f_h "$path_md"

        _f2a_all_=()

        # readarray -t _f2a_all_ <$path_md

        # for i in "${!_f2a_all_[@]}"; do
        #     lines[$i]="${lines[$i]} changed"
        # done

        arr=()
        res=()
        arr+=("Create sings files ch: .ext")
        res+=("singl_file_L")
        arr+=("Create sings files with context prefix ## ch: .ext")
        res+=("singl_file_cont_L")
        arr+=("Create sings files in dir with context prefix ## ch: .ext")
        res+=("singl_file_cont_in_dir_L")
        arr+=("Create sings files in dir with context prefix ## and assoc files ch: .ext name_assoc.ext prefix_for_context")
        res+=("singl_file_cont_in_dir_ass_L")

        f2a_all "$path_md"

        echo -e "${GREEN}\${_f2a_all_[@]} = ${_f2a_all_[*]}${NORMAL}" #print variable

        singl_file_L() {

            qq_pause "Create set fs in $PPWD THIS: ${_f2a_all_[*]} ?"

            echo -e "${BLUE}--- Enter .ext for files ---${NORMAL}" #sistem info mesage
            unset ext
            read -r ext

            if_v_h "$ext"

            unset item

            i=1

            for item in "${_f2a_all_[@]}"; do

                if ! [ "$item" == "" ]; then

                    clear_symbols_ "$item"
                    name_file="$_clear_symbols_"
                    unset _clear_symbols_

                    # name_file=${item// /_}
                    echo -e "${ULINE}touch "$i"_"$name_file"."$ext"${NORMAL}" #repit commands
                    touch "$i"_"$name_file"."$ext"
                    ((i++))

                fi

            done
        }

        singl_file_cont_L() {

            qq_pause "Create set fs in $PPWD THIS: ${_f2a_all_[*]} ?"

            echo -e "${BLUE}--- Enter .ext for files ---${NORMAL}" #sistem info mesage
            unset ext
            read -r ext

            if_v_h "$ext"

            unset item

            i=1

            for item in "${_f2a_all_[@]}"; do

                if ! [ "$item" == "" ]; then

                    clear_symbols_ "$item"
                    name_file="$_clear_symbols_"
                    unset _clear_symbols_

                    # name_file=${item// /_}
                    echo -e "${ULINE}echo " ## $item" >"$i"_"$name_file"."$ext"${NORMAL}" #repit commands
                    echo "## $item" >"$i"_"$name_file"."$ext"
                    ((i++))

                fi

            done
        }

        singl_file_cont_in_dir_L() {

            qq_pause "Create set fs in $PPWD THIS: ${_f2a_all_[*]} ?"

            echo -e "${BLUE}--- Enter .ext for files ---${NORMAL}" #sistem info mesage
            unset ext
            read -r ext

            if_v_h "$ext"

            unset item

            i=1

            for item in "${_f2a_all_[@]}"; do

                if ! [ "$item" == "" ]; then

                    clear_symbols_ "$item"
                    name_file="$_clear_symbols_"
                    unset _clear_symbols_

                    # name_file=${item// /_}
                    cd_mkdir_h "$i"_"$name_file" "$filename" "$LINENO"
                    echo -e "${ULINE}echo " ## $item" >"$i"_"$name_file"."$ext"${NORMAL}" #repit commands
                    echo "## $item" >"$name_file"."$ext"
                    cd ..
                    ((i++))

                fi

            done
        }

        singl_file_cont_in_dir_ass_L() {

            qq_pause "Create set fs in $PPWD THIS: ${_f2a_all_[*]} ?"

            echo -e "${BLUE}--- Enter .ext for files ---${NORMAL}" #sistem info mesage
            unset ext
            read -r ext

            if_v_h "$ext"

            unset item

            echo -e "${BLUE}--- Enter name with .ext ass_file_ (or empty if not by add ass_file_) ---${NORMAL}" #sistem info mesage
            unset ass_file_
            read -r ass_file_

            echo -e "${BLUE}--- Enter prefix_ for content in ass_file (or empty if not by add content) ---${NORMAL}" #sistem info mesage
            unset prefix_
            read -r prefix_

            i=1

            for item in "${_f2a_all_[@]}"; do

                if ! [ "$item" == "" ]; then

                    # name_file=${item// /_}
                    # name_file=${name_file//\!/_}
                    # name_file=${name_file//\@/_}
                    # name_file=${name_file//\#/_}
                    # name_file=${name_file//$/_}
                    # name_file=${name_file//\%/_}
                    # name_file=${name_file//^/_}
                    # name_file=${name_file//&/_}
                    # name_file=${name_file//\*/_}
                    # name_file=${name_file//\`/_}
                    # name_file=${name_file//\~/_}
                    # name_file=${name_file//\|/_}
                    # name_file=${name_file//\//_}
                    # name_file=${name_file//\\/_}

                    clear_symbols_ "$item"
                    name_file="$_clear_symbols_"
                    unset _clear_symbols_

                    cd_mkdir_h "$i"_"$name_file" "$filename" "$LINENO"
                    echo -e "${ULINE}echo " \#\# $item" >"$i"_"$name_file"."$ext"${NORMAL}" #repit commands
                    echo "## $item" >"$name_file"."$ext"

                    if [ -n "$ass_file_" ]; then
                        if [ -n "$prefix_" ]; then
                            echo "$prefix_ $item" >"$ass_file_"
                        else
                            touch "$ass_file_"
                        fi
                    fi

                    cd ..
                    ((i++))

                fi

            done
        }

        select item in "${arr[@]}"; do

            dilectus=$item
            break

        done

        case $dilectus in

        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}
            ;;

        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            ;;

        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
            ;;

        esac

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

# cr_dir_from_file_ @

unset filename
