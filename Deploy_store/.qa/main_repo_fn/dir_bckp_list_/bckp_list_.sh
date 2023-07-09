#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_bckp_list_/bckp_list_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

bckp_list_() {

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

        amount_arg $# 4 5

        count=0

        IFS='
'
        # prn_list_2_ "$1" "$2"

        for item in $(prn_list_2_ "$2" "$3"); do

            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

            if [ 0 -eq "$count" ]; then
                src=/home/st/$item
                count=1
                continue
            fi
            if [ 1 -eq "$count" ]; then

                if [ -n "$5" ]; then

                    mkdir_ "/home/st/$item/$5/"

                    dest="/home/st/$item/$5"
                else
                    mkdir_ "/home/st/$item/own_plt/"

                    dest="/home/st/$item/own_plt"
                fi

                # echo "$arg_1 $arg_2"

                dir_src="$(dirname "$src")"
                file_src="$(basename "$src")"
                dir_dest="$(dirname "$dest")"
                file_dest="$(basename "$dest")"

                # echo -e "${GREEN}\$dir_src = $dir_src${NORMAL}"     #print variable
                # echo -e "${GREEN}\$file_src = $file_src${NORMAL}"   #print variable
                # echo -e "${GREEN}\$dir_dest = $dir_dest${NORMAL}"   #print variable
                # echo -e "${GREEN}\$file_dest = $file_dest${NORMAL}" #print variable

                # echo -e "${BLUE}--- cp $arg_1 $arg_2 ---${NORMAL}" #sistem info mesage
                if [ "$1" == "-b" ]; then

                    if [ -d "$src" ] && [ -d "$dest/$file_src" ]; then
                        echo -e "${BLUE}--- rm -rf $dest/$file_src ---${NORMAL}" #sistem info mesage

                        rm -rf "$dest/${file_src:?}"
                    fi

                    echo -e "${HLIGHT}--- cp -rf $src $dest ---${NORMAL}" #start filesgit
                    cp -rf "$src" "$dest"
                elif [ "$1" == "-d" ]; then

                    #start files
                    if [ -e "$dest/$file_src" ]; then
                        if [ -e "$src" ]; then
                            sth_fd_ "$src" "$4"
                            rm -rf "${src:?}"
                        fi
                        # echo -e "${BLUE}--- cp -rf /home/st/$dest/$file_src /home/st/$dir_src ---${NORMAL}" #sistem info mesage
                        echo -e "${BLUE}--- git checkout HEAD $dest/$file_src ---${NORMAL}" #sistem info mesage
                        git checkout HEAD "$dest/$file_src"
                        echo -e "${BLUE}--- cp -rf $dest/$file_src" "$dir_src ---${NORMAL}" #sistem info mesage
                        cp -rf "$dest/$file_src" "$dir_src"
                    else
                        qq_exit "EXIT bckp_list_: $dest/$file_src not exist -> do bckp_list_() -b exactly"
                    fi

                    # echo -e "${HLIGHT}--- cp -ru --backup=t /home/st/$dest/$file_src /home/st/$dir_src ---${NORMAL}"
                    # sth_fd_ "/home/st/$src" 3
                    # cp -ru "/home/st/$dest/$file_src" "/home/st/$dir_src"
                else
                    qq_exit "$1 is not (-b)ckup or (-d)eploy"
                fi
                count=0
                continue
            fi
            # count=$((count +1))
        done

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

# bckp_list_ @

unset filename
