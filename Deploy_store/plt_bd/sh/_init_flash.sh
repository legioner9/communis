#!/bin/bash

read -p "You apdate your Alt after first install system? ^C if NOT"

PPWW=$(pwd)
y="n"

if ! [ -f "$HOME/.ssh/id_rsa" ]; then
    echo "$HOME/.ssh/ not EXIST: that first start that file"

    # read -p "Press enter to exit 1 or ^C for interrapt"

    # exit 1
    echo "continue with create keys (y/n)"
    y=""
    read y
fi

if [ -f "$HOME/.ssh/id_rsa" ]; then
    echo "$HOME/.ssh/ EXIST: that not first start that file"

    # read -p "Press enter to exit 1 or ^C for interrapt"

    # exit 1
    echo "continue with create keys (y/n)"
    y=""
    read y
fi

if [ "$y" == "y" ]; then

    echo "continue with create keys from zip (y/n)"
    y2=""
    read y2
    if [ $y2 == "y" ]; then
        cp -rfv $(pwd)/../ALT_store/read.zip ${HOME}
        cp -rf ${HOME}/.ssh ${HOME}/.ssh~
        rm -rf ${HOME}/.ssh
        cp $(pwd)/../ALT_store/read.zip ${HOME}/
        unzip ${HOME}/read.zip -d ${HOME}
        file ${HOME}/.ssh

    fi

    echo "continue with create keys from ssh generate (y/n)"
    y3=""
    read y3

    if [ "$y3" == "y" ] && ! [ $y2 == "y" ]; then
        # return 0 #! deb
        ssh-keygen -t rsa -b 4096 -C "legioner9@inbox.ru"
    fi

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi
# return 0 #! deb
# touch "$HOME/.plt_cogos"

#! hardcor path
echo "$HOME"/REPOBARE/_repo/fonsh >"$HOME"/.fonsh_path
echo "$HOME"/REPOBARE/_repo/plt >"$HOME"/.plt_path
echo "$HOME"/REPOBARE/_repo >"$HOME"/.repo_path

echo "altlinux" >"$HOME"/.plt_cogos

if [ -f "$HOME/.plt_cogos" ]; then
    PLT_COGOS=$(cat "$HOME/.plt_cogos")
    if [ -n "$PLT_COGOS" ]; then
        # echo "PLT_COGOS may be strong: fedora, altlinux"
        if [ "$PLT_COGOS" != "fedora" ] && [ "$PLT_COGOS" != "altlinux" ]; then
            read -p "PLT_COGOS NOT = fedora or altlinux: Enter to exit or ^C to interrapt"
            exit 1
        fi
        echo "PLT_COGOS=$PLT_COGOS"
    else
        read -p "PLT_COGOS is empty: Enter to exit or ^C to interrapt"
        exit 1
    fi
else
    read -p "$HOME/.PLT_COGOS not exist: Enter to exit or ^C to interrapt"
    exit 1
fi

read -p "$HOME/.plt_cogos do that Enter to continue or ^C for interrapt"

if [ $PLT_COGOS == "altlinux" ]; then

    read -p "uncomment : WHEEL_USERS ALL=(ALL) ALL: Enter to continue or ^C to interrapt exec:0)if need sudo ^C  1)su - 2)EDITOR=mcedit visudo  3). _init_flash.sh"

fi

if [ $PLT_COGOS == "fedora" ]; then

    echo "continue with create key in github.com (y/n)"
    github_key="n"
    read github_key

    if [ "$github_key" == 'y' ]; then

        sudo dnf install gh -y
        echo legioner9
        echo 124578a124578aA
        gh auth login
    fi

fi

if [ "$PLT_COGOS" == "altlinux" ]; then
    . "$PPWW"/_upd_all_alt.sh
    #	read -p "uncomment : WHEEL_USERS ALL=(ALL) ALL: Enter to continue or ^C to interrapt"
    #    su -
    #	EDITOR=mcedit visudo
fi

read -p "Press enter to continue when prepear you Alt: add ssh to github.com or ^C for interrapt"

# legioner9
# 124578a124578aA
# yandex.st.ru@inbox.ru
# qwaszx1!Aqwaszx1!A
# gh ssh-key add ~/.ssh/id_rsa.pub

cd ~ || read -p "$HOME/ not EXIST: ^C for interrapt"

if [ -d "$HOME"/Bare_communis ] || [ -d "$HOME"/start ]; then

    echo "$HOME/Bare_communis or $HOME/start exist continue with delit and clone (y/n)?"
    del_clone_key="n"
    read del_clone_key

    if [ "$del_clone_key" == 'y' ]; then
        rm -rf "$HOME"/start
        rm -rf "$HOME"/Bare_communis
    else
        qq_exit "$HOME/Bare_communis or $HOME/start exist" "$filename" "$LINENO"
    fi
fi

mkdir "$HOME"/Bare_communis
cd "$HOME"/Bare_communis || read -p "$HOME/Bare_communis not EXIST: ^C for interrapt"
git init --bare

mkdir -p "$HOME"/REPOBARE/_repo

cd "$HOME"/REPOBARE/_repo || {
    read -p "$HOME/REPOBARE/_repo not EXIST: return 1"
    return 1
}

git clone git@github.com:legioner9/plt.git || {
    read -p "fail: git clone git@github.com:legioner9/plt.git, return 1"
    return 1
}

mkdir "$HOME"/start

cd "$HOME"/start || {
    read -p "$HOME/start/ not EXIST: return 1"
    return 1
}
# git init
git clone git@github.com:legioner9/communis.git || {
    read -p "fail: git clone git@github.com:legioner9/communis.git, return 1"
    return 1
}

git clone git@github.com:legioner9/plt.git || {
    read -p "fail: git clone git@github.com:legioner9/plt.git, return 1"
    return 1
}

git clone git@github.com:legioner9/fonsh.git || {
    read -p "fail: git clone git@github.com:legioner9/fonsh.git, return 1"
    return 1
}

cd communis || {
    read -p "${COMMUNIS_PATH} not EXIST, return 1"
    return 1
}

# copy before .bash

cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/dot_home_files/own_plt/.bashrc "$HOME"/
touch "$HOME"/.bashrc~
# cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/dot_home_files/own_plt/.bios "$HOME"/
# touch "$HOME"/.bios~
cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/dot_home_files/own_plt/.re_init_flash "$HOME"/
touch "$HOME"/.re_init_flash~
cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/src_bd_communis/.gitconfig "$HOME"/
touch "$HOME"/.gitconfig~
cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/src_bd_communis/.gitrepo "$HOME"/
touch "$HOME"/.gitrepo~
cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/src_bd_communis/.gituid "$HOME"/
touch "$HOME"/.gituid~
cp -fu ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/src_bd_communis/.fonsh "$HOME"/
touch "$HOME"/.fonsh~

echo "fed_$((1 + "$RANDOM" % 100))" >"$HOME"/.plt_name
touch "$HOME"/.plt_name~

#? . "$HOME"/.bios
#? use .bachrc <- ${PLT_PATH}/.config/.env allready exist
if . "$HOME"/.bashrc; then
    read -p "fail: . $HOME/.bashrc , return 1" 
    return 1   
fi

#! mm_dogit_ carp plt?
read -p "mm_dogit_ carp plt? do it or ^C"

if [ "$PLT_COGOS" == "fedora" ]; then
    dnf_
fi
if [ "$PLT_COGOS" == "altlinux" ]; then
    apt_alt_ 1
fi

bd_communis_ -i
bd_communis_ -b

pull_bck_push_ -o

mm_dogit_ 3

unset filename
