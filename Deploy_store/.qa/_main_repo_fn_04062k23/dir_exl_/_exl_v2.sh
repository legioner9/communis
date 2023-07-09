#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_exl_/exl_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

exl_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    # snip itis "fn: ${FNN}, with_args: $*, filename: $filename, line:_$LINENO"
    local FNLOCK="fn: ${FNN}, with_args: ${ARGS[*]} , filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: [ex]ec [l]ines from {--list} file.exl
NAME: ${FUNCNAME[0]}()
ARGS: [ex]ec commands from [l]ist
--list full path to .list file
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
WARNING:
    mast unset variables interpret from {--list} file.exl
EXAMP: exl_ --list \$PATH_EXL_DIR/ls_root.exl
    examp.exl:
        eval wrp_fifs1_ ls /home/st/start -d1 -qq_exit
            P.S. strog demand return 1 if error in line commands [plt function require fifs: -qq_exit] 
${NORMAL}"
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
    #? USE exl_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_exl_() {

        echo_exl_=0
        debug_exl_=0
        unset errmes_exl_
        unset outmes_exl_
        # any1_exl_=0
        qq_exit_exl_=0
        # unset any2_exl_
        unset list_exl_
    }
    unset_autoargs_exl_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    QQ_EXIT="$qq_exit_exl_"

    echo_deb_ ${echo_exl_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_exl_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_exl_: "$errmes_exl_""
        echo "$outmes_exl_: "$outmes_exl_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # if ! is_sign_file exl "${list_exl_}"; then
    #     plt_pause "${list_exl_} not .exl signed file"
    # fi

    # list_exl_=$(abs_path $PPWD "list_exl_") #ptr args
    # echo -e "${GREEN}\$list_exl_ = $list_exl_${NORMAL}" #print variable

    #! is_est_ "${list_exl_}" -f
    
    est_ "${list_exl_}" -f

    # if [ $? -ne 0 ]; then
    #     plt_exit "be return 1 <- Fail: ${FUNCNAME[0]} in ${FNLOCK}"
    #     return 1
    # fi

    while IFS= read -r line || [ -n "$line" ]; do
        echo -e "${BLUE}$line${NORMAL}" #print variable

        if [ -n "${line}" ] && ! [ "#" == "${line:0:1}" ]; then

            ${line}
            errno="$?"
            # echo -e "${RED}\$errno = $errno${NORMAL}" #print variable

            # if [ ${errno} -eq 3 ]; then
            #     read -p "from exl_: CNTL-C to exit, ENTR to continue" </dev/tty
            # fi

            if [ ${errno} -eq 2 ]; then
                qq_pause "be continue <- Fail: return errno: ${errno} from: ${line} in ${FNLOCK}" </dev/tty
            fi

            if [ ${errno} -ne 0 ] && [ ${errno} -ne 2 ] && [ ${errno} -ne 3 ]; then
                qq_pause "be return 1 <- Fail: return errno: ${errno} from: ${line} in ${FNLOCK}" </dev/tty
                return 1
            fi

            # if [ ${RETURN_WITH_QQ_PAUSE} -eq $errno ]; then                       # questing error
            #     echo -e "${RED}--- return errno: $errno from: $line ---${NORMAL}" #exit 1
            #     qq_pause "$errno from: $line"
            #     return 0
            # fi

            # if [ ${RETURN_WITH_ECHO} -eq $errno ]; then                           # questing error
            #     echo -e "${RED}--- return errno: $errno from: $line ---${NORMAL}" #exit 1
            #     return 0
            # fi

            # if [ ${RETURN_WITH_EXIT_1} -eq $errno ]; then
            #     # exit error
            #     echo -e "${RED}--- return errno: $errno from: $line ---${NORMAL}" #exit 1
            #     # exit 1
            # fi

            # if [ ${RETURN_1} -eq $errno ]; then
            #     # exit error
            #     echo -e "${RED}--- return errno: $errno from: $line ---${NORMAL}" #exit 1
            #     return 1
            # fi

            # if $line ; then
            #     echo -e "${RED}---return errno: $errno from: $line ---${NORMAL}" #exit 1
            #     return 1
            # fi

        fi

    done \
        <${list_exl_}

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_exl_() {
    #     :
    # }
    # fedora_exl_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_exl_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_exl_
    # fi
    unset_autoargs_exl_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in exl_ $filename $LINENO" 1>/dev/null

}

# exl_ @

unset filename
