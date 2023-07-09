#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cpp_/cpp_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cpp_() {
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
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}" #print variable
    echo -e "${GREEN}file = $0${NORMAL}"    #print variable
    echo -e "${GREEN}args = $@${NORMAL}"    #print variable

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

        # echo "${FILE%.*}"
        # example.tar

        if [ -n "$1" ]; then cd_h "$1"; fi

        qq_pause " You are in $(pwd) "

        # PS3="eligendi actiones : "

        # select item in *; do

        #     dilectus_1=$item
        #     break

        # done

        cpp_ch_file_1_L() {
            unset _ch_prefile_in_dir_

            # ch_file_in_dir_ "$(pwd)"
            ch_prefile_in_dir_
            dilectus_1="$_ch_prefile_in_dir_"

            unset _ch_prefile_in_dir_

            file_wext=${dilectus_1%.*}
            echo -e "${GREEN}\$dilectus_1 = $dilectus_1${NORMAL}" #print variable

            export file_wext
        }

        # 		"-fdiagnostics-color=always",
        # "-g",
        # "${file}",
        # "-o",
        # "${fileDirname}\\${fileBasenameNoExtension}.exe"

        arr=()
        res=()

        arr+=("g++ in PWD to res_cpp/$file_wext ")
        res+=("g++ -Wall -ansi -fdiagnostics-color=always -g $(pwd)/$dilectus_1 -o $(pwd)/res_cpp/$file_wext.bexe")

        arr+=("./$file_wext.bexe in res_cpp")
        res+=(" ")

        arr+=("gcc in PWD to res_cpp/$file_wext ")
        res+=("gcc -fdiagnostics-color=always -g $(pwd)/$dilectus_1 -o $(pwd)/res_cpp/$file_wext.bexe")

        arr+=("lots file handle gcc")
        res+=(" ")

        arr+=("lots file autoDir gcc")
        res+=(" ")

        arr+=("./$file_wext.bexe in THAT_dir")
        res+=(" ")

        arr+=("lots file autoDir g++")
        res+=(" ")

        arr+=("lots file autoDir gcc with copy lc_0")
        res+=(" ")

        arr+=("build and run simple_c_project (.sh)")
        res+=(" ")

        # res+=("cpp -fdiagnostics-color=always -g $PPWD/$1 -o $PPWD/res_cpp/$file_wext")
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

            cpp_ch_file_1_L

            mkdir_ "$(pwd)/res_cpp/"

            rm_s "$(pwd)"/res_cpp/"$file_wext".bexe
            echo -e "${ULINE}g++ -fdiagnostics-color=always -g $(pwd)/$dilectus_1 -o $(pwd)/res_cpp/$file_wext.bexe${NORMAL}" #repit commands
            g++ -Wall -ansi -fdiagnostics-color=always -g $(pwd)/$dilectus_1 -o $(pwd)/res_cpp/$file_wext.bexe
            # echo -e "${ULINE}chmod +x $(pwd)/res_cpp/$file_wext.e${NORMAL}" #repit commands
            # chmod +x "$(pwd)"/res_cpp/"$file_wext".bexe

            echo -e "${BLUE}---exec $(pwd)/res_cpp/$file_wext  ---${NORMAL}" #sistem info mesage

            cd_h "$(pwd)"/res_cpp && ./"$file_wext".bexe
            cd ..

            ;;

        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            cd_h "$(pwd)"/res_cpp && ./"$file_wext".bexe
            cd ..
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            mkdir_ "$(pwd)/res_cpp/"

            cpp_ch_file_1_L

            # --------------------------
            # qq_pause "\$dilectus_1 $dilectus_1 , \$file_wext $file_wext"

            rm_s "$(pwd)"/res_cpp/"$file_wext".bexe
            echo -e "${GREEN}\${res[2]} = ${res[2]}${NORMAL}" #print variable
            gcc -Wall -fdiagnostics-color=always -g $(pwd)/$dilectus_1 -o $(pwd)/res_cpp/$file_wext.bexe
            # echo -e "${ULINE}chmod +x $(pwd)/res_cpp/$file_wext.e${NORMAL}" #repit commands
            # chmod +x "$(pwd)"/res_cpp/"$file_wext".bexe

            echo -e "${BLUE}---exec $(pwd)/res_cpp/$file_wext  ---${NORMAL}" #sistem info mesage

            echo -e "${ULINE}cd_h "$(pwd)"/res_cpp && ./"$file_wext".bexe${NORMAL}" #repit commands

            cd_h "$(pwd)"/res_cpp && ./"$file_wext".bexe
            unset file_wext
            cd ..

            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${arr[3]}---${NORMAL}" #started functions

            hand_arr=()

            add_to_hand_arr_L() {

                unset _ch_prefile_in_dir_

                ch_prefile_in_dir_
                echo -e "${GREEN}\$_ch_file_in_dir_ = $_ch_file_in_dir_${NORMAL}" #print variable
                if [ -n "$_ch_prefile_in_dir_" ]; then
                    hand_arr+=("$_ch_prefile_in_dir_")
                    unset _ch_prefile_in_dir_
                fi

                ques_ add_to_hand_arr_L
            }

            add_to_hand_arr_L

            qq_pause " \${hand_arr[@]} = ${hand_arr[*]} is true? "

            arr_o=()

            for item in "${hand_arr[@]}"; do
                echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                arr_o+=("${item%.*}.o")
                gcc -c "$item" -o "${item%.*}".o
            done

            rm "$(pwd)"/main.bexe

            echo -e "${ULINE}gcc ${arr_o[*]} -o main.bexe ${NORMAL}" #repit commands
            gcc ${arr_o[*]} -o main.bexe
            echo -e "${ULINE}./main.bexe${NORMAL}" #repit commands
            rm *.o
            ./main.bexe

            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${arr[4]}---${NORMAL}" #started functions

            fltr_prefile_c_in_dir_

            echo -e "${GREEN}\${_fltr_prefile_c_in_dir_[@]} = ${_fltr_prefile_c_in_dir_[*]}${NORMAL}" #print variable

            qq_pause " \${_fltr_prefile_c_in_dir_[@]} = ${_fltr_prefile_c_in_dir_[*]} is true? "

            arr_o=()

            for item in "${_fltr_prefile_c_in_dir_[@]}"; do
                echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                arr_o+=("${item%.*}.o")
                gcc -c "$item" -o "${item%.*}".o
            done

            rm "$(pwd)"/main.bexe

            echo -e "${ULINE}gcc ${arr_o[*]} -o main.bexe ${NORMAL}" #repit commands
            gcc ${arr_o[*]} -o main.bexe
            echo -e "${ULINE}./main.bexe${NORMAL}" #repit commands
            rm *.o
            ./main.bexe

            ;;

        "${arr[5]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ./main.bexe
            cd ..
            ;;

        "${arr[6]}")
            echo -e "${CYAN}---${arr[6]}---${NORMAL}" #started functions

            fltr_prefile_cpp_in_dir_

            echo -e "${GREEN}\${_fltr_prefile_c_in_dir_[@]} = ${_fltr_prefile_cpp_in_dir_[*]}${NORMAL}" #print variable

            qq_pause " \${_fltr_prefile_cpp_in_dir_[@]} = ${_fltr_prefile_cpp_in_dir_[*]} is true? "

            # arr_o=()

            # for item in "${_fltr_prefile_cpp_in_dir_[@]}"; do
            #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            #     arr_o+=("${item%.*}.o")
            #     gcc -c "$item" -o "${item%.*}".o
            # done

            rm "$(pwd)"/main.bexe

            echo -e "${ULINE}g++ ${_fltr_prefile_cpp_in_dir_[*]} -o main.bexe ${NORMAL}" #repit commands
            g++ -Wall -ansi ${_fltr_prefile_cpp_in_dir_[*]} -o main.bexe
            echo -e "${ULINE}./main.bexe${NORMAL}" #repit commands
            # rm *.o
            ./main.bexe

            ;;

        "${arr[7]}")
            echo -e "${CYAN}---${arr[4]}---${NORMAL}" #started functions

            # rm "$(pwd)"/lc_0.c
            # rm "$(pwd)"/lc_0.h

            cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib/*.c "$(pwd)"
            cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib/*.h "$(pwd)"

            fltr_prefile_c_in_dir_

            echo -e "${GREEN}\${_fltr_prefile_c_in_dir_[@]} = ${_fltr_prefile_c_in_dir_[*]}${NORMAL}" #print variable

            qq_pause " \${_fltr_prefile_c_in_dir_[@]} = ${_fltr_prefile_c_in_dir_[*]} is true? "

            arr_o=()

            for item in "${_fltr_prefile_c_in_dir_[@]}"; do
                echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                arr_o+=("${item%.*}.o")
                gcc -c "$item" -o "${item%.*}".o
            done

            rm "$(pwd)"/main.bexe

            echo -e "${ULINE}gcc ${arr_o[*]} -o main.bexe ${NORMAL}" #repit commands
            gcc ${arr_o[*]} -o main.bexe
            echo -e "${ULINE}./main.bexe${NORMAL}" #repit commands
            rm *.o
            ./main.bexe

            ;;

        "${arr[8]}")
            . exec.sh
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

# cpp_ @

unset filename
