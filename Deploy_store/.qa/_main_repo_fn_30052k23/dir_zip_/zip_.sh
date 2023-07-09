#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_zip_/zip_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

zip_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_FN}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: menu zip and unzip files
NAME: ${FUNCNAME[0]}()
ARGS: 
$1
CNTLS:
CNTL defaut: -qq_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: (return 1| exit 1| -qq_exit| )
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE zip_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_zip_() {
        echo_zip_=0
        debug_zip_=0
        unset errmes_zip_
        unset outmes_zip_
        # any1_zip_=0
        qq_exit_zip_=0
        # unset any2_zip_
    }
    unset_autoargs_zip_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_zip_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_zip_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_zip_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_zip_: "$errmes_zip_""
        echo "$outmes_zip_: "$outmes_zip_""
    fi
    exit_zip_() {
        unset_autoargs_zip_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_zip_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    if [ 1 -eq $1 ]; then
        zip -r $2
    fi

    if [ 2 -eq $1 ]; then
        unzip $2
    fi

    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("zip -r args :{onyl} zip_ 1 ")
    res+=("bbbbbbb")
    arr+=("unzip args[.zip] :{onyl} zip_ 2 ")
    res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")
    # arr+=("aaaaaaa")
    # res+=("bbbbbbb")

    PS3="eligendi actiones: "

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
        zip_
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        zip_
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        zip_
        ;;

    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        ${res[4]}
        zip_
        ;;

    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        ${res[5]}
        zip_
        ;;

    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        zip_
        ;;

    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        ${res[7]}
        zip_
        ;;

    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        ${res[8]}
        zip_
        ;;

    "${arr[9]}")
        echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
        ${res[9]}
        zip_
        ;;

    "${arr[10]}")
        echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
        ${res[10]}
        zip_

        ;;
    "${arr[11]}")
        echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
        ${res[11]}
        zip_
        ;;

    "${arr[12]}")
        echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
        ${res[12]}
        zip_
        ;;

    "${arr[13]}")
        echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
        ${res[13]}
        zip_
        ;;

    "${arr[14]}")
        echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
        ${res[14]}
        zip_
        ;;

    "${arr[15]}")
        echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
        ${res[15]}
        zip_
        ;;

    "${arr[16]}")
        echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        ${res[16]}
        zip_
        ;;

    "${arr[17]}")
        echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        ${res[17]}
        zip_
        ;;

    "${arr[18]}")
        echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
        ${res[18]}
        zip_
        ;;

    "${arr[19]}")
        echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        ${res[19]}
        zip_
        ;;

    "${arr[20]}")
        echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        ${res[20]}
        zip_

        ;;

    \
        \
        *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_zip_() {
    #     :
    # }
    # fedora_zip_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_zip_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_zip_
    # fi
    unset_autoargs_zip_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# zip_ @

unset filename
