#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg_/garg_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

garg_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

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
            MAIN: pars ars ( (-[param], --[param] value) create global volumes )
            NAME: ${FUNCNAME[0]}()
            ARGS: $1 pref, ...
            -[a] => a_[pref] == 1
            --[a] [val] => a_[pref] == val
            ---[a] [val] => a_[pref] == val (NOT strong exist val)

            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
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

    *)
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        cd_h "$PPWD" 1>/dev/null

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        # amount_arg $# min_args max_args

        local flag=0
        # unset item_i
        unset cl_item

        for item_i in "$@"; do
            # echo -e "${GREEN}\$item_i = $item_i${NORMAL}" #print variable

            if [ $flag -eq 2 ] && [ ${item_i:0:1} == "-" ]; then
                flag=0
            fi

            if [ $flag -eq 0 ]; then                                                                                       # expectation F_symbol
                # echo -e "${GREEN} 0 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                # item_i="${!i}"
                if [ ${item_i:0:1} == "-" ] && [ ${item_i:1:1} != "-" ] && [ ${item_i:1:1} != "?" ]; then
                    cl_item=${item_i:1}

                    name_i="$cl_item"_"$1"

                    # echo -e "${GREEN} 1 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                    one=1
                    eval $name_i=$one
                    echo "$name_i=$one"

                    flag=0

                    # echo -e "${GREEN} 2 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                    continue
                fi
                if [ ${item_i:0:2} == "--" ]; then

                    # echo -e "${GREEN} 3 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                    cl_item=${item_i:2}
                    name_i="$cl_item"_"$1"
                    # echo $name_i
                    flag=1

                    # echo -e "${GREEN} 4 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                    continue
                fi
                if [ ${item_i:0:2} == "-?" ]; then

                    # echo -e "${GREEN} 5 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                    cl_item=${item_i:2}
                    name_i="$cl_item"_"$1"
                    flag=2

                    # echo -e "${GREEN} 6 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                    continue
                fi
            fi
            if [ $flag -eq 1 ]; then
                # expectation value

                # echo -e "${GREEN} 7 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                if [ ${item_i:0:1} == "-" ]; then # param is flow_symbol - not a value
                    qq_exit "$item not value - that flow_symbol"
                fi
                if [ -n $name_i ]; then
                    eval $name_i=$item_i
                    echo "$name_i=$item_i"
                fi
                flag=0

                # echo -e "${GREEN} 8 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

            fi
            if [ $flag -eq 2 ]; then
                # expectation value

                # echo -e "${GREEN} 9 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

                # if [ ${item_i:0:1} == "-" ]; then # param is flow_symbol - not a value
                #     unset name_i
                #     # continue
                # fi
                if [ ${item_i:0:1} != "-" ] && [ -n $name_i ]; then
                    eval $name_i=$item_i
                    echo "$name_i=$item_i"
                fi
                flag=0

                # echo -e "${GREEN} 10 \$item_i = $item_i, \$name_i = $name_i, \$flag = $flag, \$cl_item = $cl_item${NORMAL}" #print variable

            fi
        done
        if [ $flag -eq 1 ]; then
            qq_exit  "$item_i flow_symbol withut value"
        fi

        # echo -e "${BLUE}--- exit garg_ ---${NORMAL}" #sistem info mesage

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# garg_ @

unset filename
