#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_up_err_/up_err_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

up_err_() {

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
    # snip itis "fn: ${FNN}, with_args: $*, filename: $filename, line:_$LINENO"
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
MAIN: exec recurce all [ \$1: .ext] files from list dirs from [ \$2 file_list]
NAME: ${FUNCNAME[0]}()
ARGS:
\$1: .ext
\$2: file_list
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE up_err_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_up_err_() {
        echo_up_err_=0
        debug_up_err_=0
        unset errmes_up_err_
        unset outmes_up_err_
        # any1_up_err_=0
        # unset any2_up_err_
    }
    unset_autoargs_up_err_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_up_err_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_up_err_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_up_err_: "$errmes_up_err_""
        echo "$outmes_up_err_: "$outmes_up_err_""
    fi

    ext="$1"
    list_file_path="$2"
    # echo -e "${GREEN}\$ext = $ext${NORMAL}"                       #print variable
    # echo -e "${GREEN}\$list_file_path = $list_file_path${NORMAL}" #print variable
    # echo ""
    # f2e "$list_file_path"

    flag=1
    for path_dir in $(f2e $list_file_path); do
        echo_deb_ ${echo_up_err_} "\$path_dir = file://$path_dir" #print variable

        for file_path in $(find_ext "$path_dir" "$ext"); do
            echo_deb_ ${echo_up_err_} "\$file_path = file://$file_path" #print variable

            if [ ${debug_up_err_} -eq 0 ]; then
                if ! [ "$(. "$file_path")" ] 1>/dev/null; then
                    flag=0
                fi
            elif [ ${debug_up_err_} -eq 1 ]; then
                if ! [ "$(. "$file_path")" ]; then
                    flag=0
                fi
            fi
        done

    done

    flag_return=0
    if [ 1 -eq ${flag} ]; then
        echo "<<< up_err_ $ext file://$list_file_path  TRUE >>>" #sistem info mesage       
    fi

    if [ 0 -eq ${flag} ]; then
        echo "<<< up_err_ $ext file://$list_file_path FAIL >>>" >&2 #sistem info mesage
        flag_return=1
    fi

    # altlinux_up_err_() {
    #     :
    # }
    # fedora_up_err_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_up_err_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_up_err_
    # fi

    unset_autoargs_up_err_

    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

    return ${flag_return}

}

# up_err_ @

unset filename
