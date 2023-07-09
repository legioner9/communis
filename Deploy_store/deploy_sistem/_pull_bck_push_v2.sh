#!/bin/bash

#. "$HOME/.bashrc"
# . "${COMMUNIS_PATH}/Deploy_store/deploy_sistem/bck_to_start_communis.sh"

filename="${COMMUNIS_PATH}/Deploy_store/deploy_sistem/pull_bck_push.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#

pull_bck_push() {
    echo -e "${CYAN}---pull_bck_push()---${NORMAL}" #started functions

    PPW=$(pwd)

    rr_

    cd_h ${COMMUNIS_PATH}/

    echo -e "${ULINE}git pull origin master${NORMAL}" #repit commands
    git pull origin master

    if [ "$did" = "alt" ]; then
        echo -e "${ULINE}bck_to_start_communis${NORMAL}" #repit commands
        bck_to_start_communis "$filename" "$LINENO"
    fi

    if [ "$did" = "win10" ]; then
        echo -e "${CYAN}---recwin10_after_start_communis---${NORMAL}" #started functions
        recwin10_after_start_communis "$filename" "$LINENO"
    fi

    cd_h ${COMMUNIS_PATH}/

    date -u >.date

    echo -e "${ULINE}git add .${NORMAL}" #repit commands
    git add .

    echo -e "${ULINE}git commit${NORMAL}" #repit commands
    git commit

    echo -e "${ULINE}git push origin master${NORMAL}" #repit commands
    git push origin master

    if [ "$did" = "alt" ]; then

        echo -e "${ULINE}git push local_alt master${NORMAL}" #repit commands
        git push local_alt master
        if [ -d /run/media/st/MY_ONE/COPY_bare/ ]; then
            echo -e "${ULINE}cp -ruT $HOME/Bare_communis/ /run/media/st/MY_ONE/COPY_bare/${NORMAL}" #repit commands
            cp -ruT $HOME/Bare_communis/ /run/media/st/MY_ONE/COPY_bare/
            cd $HOME/cntr_bare/COPY_bare || qq_exit
            git pull origin master > /dev/null

            #! for bag
            # cd_h ${COMMUNIS_PATH}/
            # date -u >.date
            #!

            cat "$HOME/cntr_bare/COPY_bare/.date"
            cat "${COMMUNIS_PATH}/.date"

            if ! diff -q "$HOME/cntr_bare/COPY_bare/.date" "${COMMUNIS_PATH}/.date" >/dev/null; then
                cat "$HOME/cntr_bare/COPY_bare/.date"
                cat "${COMMUNIS_PATH}/.date"
                echo -e "${RED}--- ERROR PUSH to /run/media/st/MY_ONE/COPY_bare/---${NORMAL}" #exit 1
            fi

        fi

    fi

    cd_h "$PPW"

}

# pull_bck_push

export pull_bck_push

unset filename
