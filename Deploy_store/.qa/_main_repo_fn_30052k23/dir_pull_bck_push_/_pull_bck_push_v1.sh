#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="$PATH_FN/dir_pull_bck_push_/pull_bck_push_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

pull_bck_push_() {

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
        bd_communis_ -h
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: 
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
    #? USE pull_bck_push_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_pull_bck_push_() {
        echo_pull_bck_push_=0
        debug_pull_bck_push_=0
        unset errmes_pull_bck_push_
        unset outmes_pull_bck_push_
        # any1_pull_bck_push_=0
        qq_exit_pull_bck_push_=0
        # unset any2_pull_bck_push_
    }
    unset_autoargs_pull_bck_push_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    QQ_EXIT=${qq_exit_pull_bck_push_}
    #
    #? cd "$1" || {
    #?    read -p "$1: $1 not dir - enter for exit 1, ^C for interrapt in ${FNLOCK}"
    #?    exit 1
    #?}
    #
    echo_deb_ ${echo_pull_bck_push_} "cntl echo_deb_ mode in ${FNLOCK}"
    if [ ${debug_pull_bck_push_} -eq 1 ]; then
        echo "DEBUG MODE in ${FNLOCK}"
        echo "$errmes_pull_bck_push_: "$errmes_pull_bck_push_""
        echo "$outmes_pull_bck_push_: "$outmes_pull_bck_push_""
    fi
    exit_pull_bck_push_() {
        unset_autoargs_pull_bck_push_
        qq_exit_ "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_pull_bck_push_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    amount_arg $# 1 1



    rr_



    exl_ --list $PATH_EXL_DIR/cr_dirs.exl

    cd_h ${PATH_COMMUNIS}/

    echo -e "${ULINE}git pull origin master${NORMAL}" #repit commands
    if ! git pull origin master 1>/dev/null; then
        qq_exit "pull NOT possible"
    fi



    bd_communis_ "$1"

    touch "${HOME}/.gitconfig"
    touch "${HOME}/.plt_cogos"

    up_plt_cogos_

    echo -e "${BLUE}--- cp -f ${PATH_COMMUNIS}/Deploy_store/plt_bd/sysdiffers/$PLT_COGOS/.gitconfig ${HOME}/.gitconfig ---${NORMAL}" #sistem info mesage
    cp -f "${PATH_COMMUNIS}/Deploy_store/plt_bd/sysdiffers/$PLT_COGOS/.gitconfig" "${HOME}/.gitconfig"

    cd_h ${PATH_COMMUNIS}/

    # date -u >.date
    ce_
    chk_tst_
    cd_h ${PATH_COMMUNIS}/

    echo -e "${ULINE}git add .${NORMAL}" #repit commands
    git add .

    echo -e "${ULINE}git commit${NORMAL}" #repit commands
    git commit

    # echo -e "${ULINE}git push origin master${NORMAL}" #repit commands

    # git push local_alt master
    # git push origin master
    # git push my_one master
    # git push tosh_ext master

    count=0

    IFS='
'

    # $1=file.list2
    # $2=delim
    repo_list2=${COMMUNIS_PATH}/Deploy_store/plt_bd/list2/communis_repo.list2

    # echo -e "${BLUE}--- prn_list_2_ $repo_list2 ^^ ---${NORMAL}" #sistem info mesage

    mkdir_ ${HOME}/Bare_communis
    if [ ! -d ${HOME}/Bare_communis/objects ]; then
        qq_pause " ${HOME}/Bare_communis/objects exist? "
        cd_h "${HOME}/Bare_communis"
        echo -e "${BLUE}--- git init --bare in $(pwd) ---${NORMAL}" #sistem info mesage
        git init --bare
    fi

    if [ -d "${PATH_MY_ONE}/" ]; then
        mkdir_ "${PATH_MY_ONE}/_git_communis/"
        mkdir_ "${PATH_MY_ONE}/_git_communis/bd_bare_communis"

        if [ ! -d ${PATH_MY_ONE}/_git_communis/bd_bare_communis/objects ]; then
            cd_h "${PATH_MY_ONE}/_git_communis/bd_bare_communis"
            echo -e "${BLUE}--- git init --bare in $(pwd) ---${NORMAL}" #sistem info mesage
            git init --bare
        fi
    fi

    if [ -d "${PATH_TOSHIBA_EXT}" ]; then
        mkdir_ "${PATH_TOSHIBA_EXT}/_git_communis/"
        mkdir_ "${PATH_TOSHIBA_EXT}/_git_communis/bd_bare_communis"

        if [ ! -d ${PATH_TOSHIBA_EXT}/_git_communis/bd_bare_communis/objects ]; then
            cd_h "${PATH_TOSHIBA_EXT}/_git_communis/bd_bare_communis"
            echo -e "${BLUE}--- git init --bare in $(pwd) ---${NORMAL}" #sistem info mesage
            git init --bare
        fi
    fi

    for item in $(prn_list_2_ "$repo_list2" ^^); do

        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

        if [ 0 -eq "$count" ]; then

            name_repo=$item
            # echo -e "${GREEN}\$name_repo = $name_repo${NORMAL}" #print variable
            count=1
            continue
        fi
        if [ 1 -eq "$count" ]; then
            path_repo=$item
            # echo -e "${GREEN}\$path_repo = $path_repo${NORMAL}" #print variable
            # use args PART_1, PART_2
            if [ -d "$path_repo" ] || [ "git@github.com:legioner9/communis.git" == "$path_repo" ] || [ "git@gitlab.com:legioner9999/communis.git" == "$path_repo" ] || [ "ssh://legioner9@git.code.sf.net/p/communis/code" == "$path_repo" ]; then

                cd_h ${PATH_COMMUNIS}/
                echo -e "${BLUE}--- git push $name_repo master file://$path_repo ---${NORMAL}" #sistem info mesage
                # git push "$name_repo" master

                if ! git push "$name_repo" master 1>/dev/null; then
                    qq_pause "git push $name_repo master NOT possible"
                fi

                if [ "$name_repo" == "my_one" ] || [ "$name_repo" == "tosh_ext" ]; then

                    dir_repo=$(dirname $path_repo)


                    exl_ --list $PATH_EXL_DIR/comm_prepull_bcp.exl



                    exl_ --list $PATH_EXL_DIR/pipe_fs.exl


                fi

            else
                echo -e "${HLIGHT}--- not txist $name_repo file://$path_repo ---${NORMAL}" #start files
            fi
            count=0
            continue
        fi
        # count=$((count +1))
    done


    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_pull_bck_push_() {
    #     :
    # }
    # fedora_pull_bck_push_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_pull_bck_push_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_pull_bck_push_
    # fi
    unset_autoargs_pull_bck_push_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 1>/dev/null

}

# pull_bck_push_ @

unset filename
