#!/bin/bash

#. "$HOME/.bashrc"
# . "${COMMUNIS_PATH}/Deploy_store/deploy_sistem/bck_to_start_communis.sh"

filename="${COMMUNIS_PATH}/Deploy_store/deploy_sistem/pull_bck_push.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#

pull_bck_push() {
    echo -e "${CYAN}---pull_bck_push()---${NORMAL}" #started functions

    # my_one /run/media/st/MY_ONE/_git_communis/bd_bare_communis
    # tosh_ext /run/media/st/TOSHIBA EXT/_git_communis/bd_bare_communis
    # origin  git@github.com:legioner9/communis.git
    # local_alt /home/st/Bare_communis/

    # tst_exit

    amount_arg $# 1 1

    PPW=$(pwd)

    rr_

    if [ "-h" == "$1" ]; then
        bd_communis_ -h
        return 0
    fi

    cd_h ${COMMUNIS_PATH}/

    echo -e "${ULINE}git pull origin master${NORMAL}" #repit commands
    if ! git pull origin master 1>/dev/null; then
        qq_exit "pull NOT possible"
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

    touch "$HOME/.gitconfig"
    touch "$HOME/.plt_cogos"

    up_plt_cogos_

    echo -e "${BLUE}--- cp -f ${COMMUNIS_PATH}/Deploy_store/plt_bd/sysdiffers/$PLT_COGOS/.gitconfig $HOME/.gitconfig ---${NORMAL}" #sistem info mesage
    cp -f "${COMMUNIS_PATH}/Deploy_store/plt_bd/sysdiffers/$PLT_COGOS/.gitconfig" "$HOME/.gitconfig"

    cd_h ${COMMUNIS_PATH}/

    # date -u >.date
    ce_
    chk_tst_
    cd_h ${COMMUNIS_PATH}/

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

    mkdir_ $HOME/Bare_communis
    if [ ! -d $HOME/Bare_communis/objects ]; then
        qq_pause " $HOME/Bare_communis/objects exist? "
        cd_h "$HOME/Bare_communis"
        echo -e "${BLUE}--- git init --bare in $(pwd) ---${NORMAL}" #sistem info mesage
        git init --bare
    fi

    if [ -d "/run/media/st/MY_ONE/" ]; then
        mkdir_ "/run/media/st/MY_ONE/_git_communis/"
        mkdir_ "/run/media/st/MY_ONE/_git_communis/bd_bare_communis"

        if [ ! -d /run/media/st/MY_ONE/_git_communis/bd_bare_communis/objects ]; then
            cd_h "/run/media/st/MY_ONE/_git_communis/bd_bare_communis"
            echo -e "${BLUE}--- git init --bare in $(pwd) ---${NORMAL}" #sistem info mesage
            git init --bare
        fi
    fi

    if [ -d "/run/media/st/TOSHIBA_EXT" ]; then
        mkdir_ "/run/media/st/TOSHIBA_EXT/_git_communis/"
        mkdir_ "/run/media/st/TOSHIBA_EXT/_git_communis/bd_bare_communis"

        if [ ! -d /run/media/st/TOSHIBA_EXT/_git_communis/bd_bare_communis/objects ]; then
            cd_h "/run/media/st/TOSHIBA_EXT/_git_communis/bd_bare_communis"
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

                cd_h ${COMMUNIS_PATH}/
                echo -e "${BLUE}--- git push $name_repo master file://$path_repo ---${NORMAL}" #sistem info mesage
                # git push "$name_repo" master

                if ! git push "$name_repo" master 1>/dev/null; then
                    qq_pause "git push $name_repo master NOT possible"
                fi

                if [ "$name_repo" == "my_one" ] || [ "$name_repo" == "tosh_ext" ]; then

                    dir_repo=$(dirname $path_repo)

                    # add flash file
                    echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_init_flash.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_init_flash.sh $dir_repo
                    echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_rbl_communis.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_rbl_communis.sh $dir_repo
                    echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/dnf_for_first_start.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/dnf_for_first_start.sh $dir_repo
                    echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/prl.man $dir_repo ---${NORMAL}" #sistem info mesage
                    cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/prl.man $dir_repo
                    echo -e "${BLUE}--- rm -fr /run/media/st/MY_ONE/ALT_store/ ---${NORMAL}" #sistem info mesage
                    rm -fr /run/media/st/MY_ONE/ALT_store/

                    echo -e "${BLUE}--- cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_upd_all_alt.sh $dir_repo ---${NORMAL}" #sistem info mesage
                    cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_upd_all_alt.sh $dir_repo

                    echo -e "${BLUE}--- wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Store/ALT_store/ /run/media/st/MY_ONE/ -cd1 -cd2 ---${NORMAL}" #sistem info mesage

                    wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Store/ALT_store/ /run/media/st/MY_ONE/ -cd1 -cd2 1>/dev/null

                    echo -e "${BLUE}--- wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/sys_stores /run/media/st/MY_ONE/ -cd1 -cd2 ---${NORMAL}"

                    wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/sys_stores /run/media/st/MY_ONE/ -cd1 -cd2 1>/dev/null

                    # up from  tosh /run/media/st/TOSHIBA_EXT/

                    tosh_disk="/run/media/st/TOSHIBA_EXT"

                    echo -e "${BLUE}--- wrp_fifs2_ cp ${tosh_disk}/up_to_communis/. ${COMMUNIS_PATH}/Store/up_from_tosh -cd1 ---${NORMAL}" #sistem info mesage

                    wrp_fifs2_ cp -rfu ${tosh_disk}/up_to_communis/. ${COMMUNIS_PATH}/Store/up_from_tosh -cd1

                    # up to tosh /run/media/st/TOSHIBA_EXT/

                    store_communis="${COMMUNIS_PATH}/Store"

                    echo -e "${BLUE}--- wrp_fifs2_ cp -rfu ${store_communis}/up_to_tosh/. ${tosh_disk}/up_from_communis -cd1 ---${NORMAL}" #sistem info mesage

                    wrp_fifs2_ cp -rfu ${store_communis}/up_to_tosh/. ${tosh_disk}/up_from_communis -cd1

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
    #     if [ -d /run/media/st/MY_ONE/COPY_bare/ ]; then
    #         echo -e "${ULINE}cp -ruT $HOME/Bare_communis/ /run/media/st/MY_ONE/COPY_bare/${NORMAL}" #repit commands
    #         cp -ruT $HOME/Bare_communis/ /run/media/st/MY_ONE/COPY_bare/
    #         # cd $HOME/cntr_bare/COPY_bare || qq_exit
    #         # git pull origin master > /dev/null

    #         # #! for bag
    #         # # cd_h ${COMMUNIS_PATH}/
    #         # # date -u >.date
    #         # #!

    #         # cat "$HOME/cntr_bare/COPY_bare/.date"
    #         # cat "${COMMUNIS_PATH}/.date"

    #         # if ! diff -q "$HOME/cntr_bare/COPY_bare/.date" "${COMMUNIS_PATH}/.date" >/dev/null; then
    #         #     cat "$HOME/cntr_bare/COPY_bare/.date"
    #         #     cat "${COMMUNIS_PATH}/.date"
    #         #     echo -e "${RED}--- ERROR PUSH to /run/media/st/MY_ONE/COPY_bare/---${NORMAL}" #exit 1
    #         # fi

    #     fi

    # fi

    cd_h "$PPW"

}

# pull_bck_push

export pull_bck_push

unset filename
