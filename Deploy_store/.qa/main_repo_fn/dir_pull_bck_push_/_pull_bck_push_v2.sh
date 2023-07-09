#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_pull_bck_push_/pull_bck_push_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

pull_bck_push_() {

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
    local FNLOCK="fn: ${FNN}, with_args: $1 $2 $3 $4, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}/${FNN}.sh, line: $LINENO"
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
        bd_communis_ -h
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS: 
$1
CNTLS:
CNTL defaut: -plt_exit, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: 
RETURN: {, stdout, data:, change to ptr, }
ERROR: (return 1| exit 1| -plt_exit| )
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
        plt_exit "message in ${FNLOCK}"
        echo "message in ${FNLOCK}" 1>&2
    }
    #! MAST BE AFTER exit_pull_bck_push_: return 1
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # mm_dogit_ 4

    amount_arg $# 1 1

    # PPW=$(pwd)

    rr_

    # if [ "-h" == "$1" ]; then
    #     bd_communis_ -h
    #     return 0
    # fi

    exl_ --list $PATH_EXL_DIR/cr_dirs.exl

    cd_h ${COMMUNIS_PATH}/

    echo -e "${ULINE}git pull origin master${NORMAL}" #repit commands
    if ! git pull origin master 1>/dev/null; then
        plt_exit "pull NOT possible"
    fi

    # if [ "$did" = "alt" ]; then
    #     echo -e "${ULINE}bck_to_start_communis${NORMAL}" #repit commands
    #     bck_to_start_communis "$filename" "$LINENO"
    # fi

    # if [ "$did" = "win10" ]; then
    #     echo -e "${CYAN}---recwin10_after_start_communis---${NORMAL}" #started functions
    #     recwin10_after_start_communis "$filename" "$LINENO"
    # fi

    bd_communis_ "$1"

    touch "/home/st/.gitconfig"
    touch "/home/st/.plt_cogos"

    up_plt_cogos_

    echo -e "${BLUE}--- cp -f ${COMMUNIS_PATH}/Deploy_store/plt_bd/sysdiffers/$PLT_COGOS/.gitconfig /home/st/.gitconfig ---${NORMAL}" #sistem info mesage
    cp -f "${COMMUNIS_PATH}/Deploy_store/plt_bd/sysdiffers/$PLT_COGOS/.gitconfig" "/home/st/.gitconfig"

    cd_h ${COMMUNIS_PATH}/

    # date -u >.date
    #! exlude clang check
    # ce_
    chk_tst_
    cd_h ${COMMUNIS_PATH}/

    # echo -e "${BLUE}--- git diff | cat ---${NORMAL}" #sistem info mesage
    # # git diff | cat

    # echo -e "${BLUE}--- gs | is_rl_siev_and ---${NORMAL}" #sistem info mesage
    # # gs | is_rl_siev_and

    # echo -e "${HLIGHT}--- pull_bck_push_gsis() ---${NORMAL}" #start files

    # pull_bck_push_gsis() {
    #     local match_str="Untracked files"
    #     gs | is_rl_siev_and "${match_str}"

    #     return $?
    # }

    # if [ -z "$(git diff | cat)" ] && [ -z "$(git diff --cached | cat)" ] && ! pull_bck_push_gsis; then
    #     echo -e "${GREEN}--- git add nothing ---${NORMAL}" #sistem info mesage
    # else
    echo -e "${ULINE}git add .${NORMAL}" #repit commands
    git add .

    echo -e "${ULINE}git commit${NORMAL}" #repit commands
    git commit
    # fi

    # echo -e "${ULINE}git add .${NORMAL}" #repit commands
    # git add .

    # echo -e "${ULINE}git commit${NORMAL}" #repit commands
    # git commit

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

    mkdir_ /home/st/Bare_communis
    if [ ! -d /home/st/Bare_communis/objects ]; then
        plt_pause " /home/st/Bare_communis/objects exist? "
        cd_h "/home/st/Bare_communis"
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

    if [ -d "${PATH_TOSH}" ]; then
        mkdir_ "${PATH_TOSH}/_git_communis/"
        mkdir_ "${PATH_TOSH}/_git_communis/bd_bare_communis"

        if [ ! -d ${PATH_TOSH}/_git_communis/bd_bare_communis/objects ]; then
            cd_h "${PATH_TOSH}/_git_communis/bd_bare_communis"
            echo -e "${BLUE}--- git init --bare in $(pwd) ---${NORMAL}" #sistem info mesage
            git init --bare
        fi
    fi

    exl_ --list $PATH_EXL_DIR/comm_prepull_bcp_ALT.exl

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

                cd_h ${COMMUNIS_PATH}/
                echo -e "${BLUE}--- git push $name_repo master file://$path_repo ---${NORMAL}" #sistem info mesage
                # git push "$name_repo" master

                if ! git push "$name_repo" master 1>/dev/null; then
                    plt_pause "git push $name_repo master NOT possible"
                fi

                if [ "$name_repo" == "my_one" ] || [ "$name_repo" == "tosh_ext" ] || [ "$name_repo" == "tosh" ]; then

                    dir_repo=$(dirname $path_repo)

                    # add flash file
                    # echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_init_flash.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    # cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_init_flash.sh $dir_repo
                    # echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_rbl_communis.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    # cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_rbl_communis.sh $dir_repo
                    # echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/dnf_for_first_start.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    # cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/dnf_for_first_start.sh $dir_repo
                    # echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/prl.man $dir_repo ---${NORMAL}" #sistem info mesage
                    # cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/prl.man $dir_repo
                    # echo -e "${BLUE}--- rm -fr ${PATH_MY_ONE}/ALT_store/ ---${NORMAL}" #sistem info mesage
                    # rm -fr ${PATH_MY_ONE}/ALT_store/

                    # echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_upd_all_alt.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    # cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_upd_all_alt.sh $dir_repo

                    # echo -e "${BLUE}--- wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Store/ALT_store/ ${PATH_MY_ONE}/ -cd1 -cd2 ---${NORMAL}" #sistem info mesage

                    # wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Store/ALT_store/ ${PATH_MY_ONE}/ -cd1 -cd2 1>/dev/null

                    # echo -e "${BLUE}--- wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/sys_stores ${PATH_MY_ONE}/ -cd1 -cd2 ---${NORMAL}"

                    # wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/sys_stores ${PATH_MY_ONE}/ -cd1 -cd2 1>/dev/null

                    # up from  tosh ${PATH_TOSHIBA_EXT}/

                    exl_ --list $PATH_EXL_DIR/comm_prepull_bcp.exl

                    # tosh_disk="${PATH_TOSHIBA_EXT}"

                    # echo -e "${BLUE}--- wrp_fifs2_ cp ${tosh_disk}/up_to_communis/. ${COMMUNIS_PATH}/Store/up_from_tosh -cd1 ---${NORMAL}" #sistem info mesage

                    # wrp_fifs2_ cp -rfu ${tosh_disk}/up_to_communis/. ${COMMUNIS_PATH}/Store/up_from_tosh -cd1

                    # # up to tosh ${PATH_TOSHIBA_EXT}/

                    # store_communis="${COMMUNIS_PATH}/Store"

                    # echo -e "${BLUE}--- wrp_fifs2_ cp -rfu ${store_communis}/up_to_tosh/. ${tosh_disk}/up_from_communis -cd1 ---${NORMAL}" #sistem info mesage

                    # wrp_fifs2_ cp -rfu ${store_communis}/up_to_tosh/. ${tosh_disk}/up_from_communis -cd1

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

    # if [ "$did" = "alt" ]; then

    #     echo -e "${ULINE}git push local_alt master${NORMAL}" #repit commands
    #     git push local_alt master
    #     if [ -d ${PATH_MY_ONE}/COPY_bare/ ]; then
    #         echo -e "${ULINE}cp -ruT /home/st/Bare_communis/ ${PATH_MY_ONE}/COPY_bare/${NORMAL}" #repit commands
    #         cp -ruT /home/st/Bare_communis/ ${PATH_MY_ONE}/COPY_bare/
    #         # cd /home/st/cntr_bare/COPY_bare || plt_exit
    #         # git pull origin master > /dev/null

    #         # #! for bag
    #         # # cd_h ${COMMUNIS_PATH}/
    #         # # date -u >.date
    #         # #!

    #         # cat "/home/st/cntr_bare/COPY_bare/.date"
    #         # cat "${COMMUNIS_PATH}/.date"

    #         # if ! diff -q "/home/st/cntr_bare/COPY_bare/.date" "${COMMUNIS_PATH}/.date" >/dev/null; then
    #         #     cat "/home/st/cntr_bare/COPY_bare/.date"
    #         #     cat "${COMMUNIS_PATH}/.date"
    #         #     echo -e "${RED}--- ERROR PUSH to ${PATH_MY_ONE}/COPY_bare/---${NORMAL}" #exit 1
    #         # fi

    #     fi

    # fi

    # cd_h "$PPW"

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
