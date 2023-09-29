#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_start_/mm_start_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

mm_start_() {

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
MAIN: start menu propietarian apps
NAME: ${FUNCNAME[0]}()
ARGS:
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE mm_start_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_mm_start_() {
        echo_mm_start_=0
        debug_mm_start_=0
        unset errmes_mm_start_
        unset outmes_mm_start_
        # any1_mm_start_=0
        # unset any2_mm_start_
    }
    unset_autoargs_mm_start_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_mm_start_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_mm_start_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_mm_start_: "$errmes_mm_start_""
        echo "$outmes_mm_start_: "$outmes_mm_start_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    mm_start_web_start_() {

        echo -e "${HLIGHT}--- sudo start moin ---${NORMAL}" #start files
        sudo start moin
        echo -e "${HLIGHT}--- sudo service nginx start ---${NORMAL}" #start files
        sudo service nginx start
        echo -e "${HLIGHT}--- sudo service php7-fpm start ---${NORMAL}" #start files
        sudo service php7-fpm start

    }

    echo -e "${BLUE}--- exec ${FNN} (num_menu) ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("start or install android studio")
    res+=("fn_install_andr_studio_mm_start_ &")
    arr+=("inst and start idea")
    res+=("fn_inst_and_start_idea_mm_start_ &")
    arr+=("yandex-disk start -d ~/YA/")
    res+=("yandex-disk start -d ~/YA/")
    arr+=("start apache2")
    res+=("sudo /etc/init.d/httpd2 start")
    arr+=("restart apache2")
    res+=("sudo /etc/init.d/httpd2 restart")
    arr+=("start flatpak PyCharm-Community")
    res+=("flatpak run com.jetbrains.PyCharm-Community")
    arr+=("local web start")
    res+=("mm_start_web_start_")
    arr+=("start jupyter lab")
    res+=("jupyter lab")
    # arr+=("aaaa")
    # res+=("bbbbb")
    # arr+=("aaaa")
    # res+=("bbbbb")
    # arr+=("aaaa")
    # res+=("bbbbb")
    # arr+=("aaaa")
    # res+=("bbbbb")
    # arr+=("aaaa")
    # res+=("bbbbb")
    # arr+=("aaaa")
    # res+=("bbbbb")
    # arr+=("aaaa")
    # res+=("bbbbb")
    if [ $(num_01 $1) -eq 1 ] && [ $1 -le ${#arr[@]} ]; then
        num_res=$(($1 - 1))
        ${res[${num_res}]}
        return 0
    fi
    PS3="eligendi actiones: "
    select item in "${arr[@]}"; do
        for ((i = 0; i < 1000; i++)); do
            if [[ ${item} == ${arr[$i]} ]]; then
                ${res[$i]}
                ${FNN} $@
            fi
            if [[ ${item} == ${arr[0]} ]]; then
                ${res[$i]}
            fi
        done
    done
    #{zzz20}

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_mm_start_() {
    #     :
    # }
    # fedora_mm_start_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_mm_start_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_mm_start_
    # fi
    unset_autoargs_mm_start_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in mm_start_ $filename $LINENO"

}

# mm_start_ @

unset filename
