#!/bin/bash

# echo "start .bashrc"echo -e "${HLIGHT}---$HOME/.bashrc---${NORMAL}" #start files

unset FONSH_PATH

if [ -f ~/.fonsh_path ]; then
    FONSH_PATH=$(cat ~/.fonsh_path)
fi

if [ -z "${FONSH_PATH}" ] || ! [ "$(basename $FONSH_PATH)" == "fonsh" ]; then
    echo "FONSH_PATH not avalable" >&2
    return 1
fi

unset PLT_PATH

if [ -f ~/.plt_path ]; then
    PLT_PATH=$(cat ~/.plt_path)
fi

if [ -z "${PLT_PATH}" ] || ! [ "$(basename $PLT_PATH)" == "plt" ]; then
    echo "PLT_PATH not avalable" >&2
    return 1
fi

unset REPO_PATH

if [ -f ~/.repo_path ]; then
    REPO_PATH=$(cat ~/.repo_path)
fi

if [ -z "${REPO_PATH}" ] || ! [ "$(basename $REPO_PATH)" == "_repo" ]; then
    echo "REPO_PATH not avalable" >&2
    return 1
fi

IIFS=$IFS

# export PATH="$HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/res_cpp:$PATH"

PPWD="$(pwd)"

PLT_NAME=$(cat "$HOME"/.plt_name)

. "${PLT_PATH}"/.d/.config/env.sh

# if ! [[ -d "${PATH_OS}" ]]; then
#     read -p "\${PATH_OS} = ${PATH_OS} is not dir, be return 1 - for interrupt ^C"
#     return 1
# fi

if ! [[ -d "${COMMUNIS_PATH}" ]]; then
    read -p "\${COMMUNIS_PATH} = ${COMMUNIS_PATH} is not dir, be return 1 - for interrupt ^C"
    return 1
fi

eval "$(ssh-agent -s)"

TSH_book_path="$HOME"/ProjectRepo_2/_repo/BOOK
# PATH_OS=$HOME/start/communis/Deploy_store
# PATH_FN="$PATH_OS/.qa/main_repo_fn" # path to pln
# PATH_TAG="$PATH_FN/_config/agno_tag" # path to tag tree

export IIFS

export MANOPT="-L ru"

. "${COMMUNIS_PATH}/Deploy_store/.os/.sh/git-prompt.sh"
# REPOBARE/_repo/communis/Deploy_store/.qa

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\033[35;40m\u@\H \w$(__git_ps1 " (%s)")\$\033[0m '

if [ -f ~/.bash_aliases ]; then

    . ~/.bash_aliases

fi

. "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/0_ini.sh"

# c_up() {
#     echo -e "${CYAN}---c_up() \$1 = $1---${NORMAL}" #started functions
#     IFS=$IIFS

#     # cd_h "$1" "$filename" "$LINENO"
#     cd_h "$1"

#     local dir
#     dir=$(pwd)

#     for item in *; do
#         # echo -e "${GREEN}\$item = $item${NORMAL}"             #print variable
#         # echo -e "${GREEN}\${item:0:1} = ${item:0:1}${NORMAL}" #print variable
#         local item_path=$dir/$item
#         if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]; then
#             . "$item_path"
#             elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

#             c_up "$item_path"

#         fi

#     done
# }

c_up() {
    echo -e "${CYAN}---c_up() \$1 = $1---${NORMAL}" #started functions
    IFS=$IIFS

    # cd_h "$1" "$filename" "$LINENO"
    if [[ -d "$1" ]]; then
        cd "$1"
    else
        echo "$1 is not dir" >&2
        return 1
    fi

    local dir
    dir=$(pwd)

    for item in *; do

        local item_path=$dir/$item
        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" = sh ]; then
            # echo "---------- "${item##*.}" ---------------"
            # if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]; then
            # echo "$item_path"
            # read -r e
            . "$item_path"

        elif
            [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]
        then

            c_up "$item_path"

        fi

    done
}

export c_up

c_test() {
    # echo -e "${CYAN}---c_test() \$1 = $1---${NORMAL}" #started functions
    # IFS=$IIFS

    # cd_h "$1" "$filename" "$LINENO"
    cd "$1"

    local dir
    dir=$(pwd)

    for item in *; do

        local item_path=$dir/$item
        if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ] && [ "${item##*.}" = "tst" ]; then
            # echo "---------- "$item_path" ---------------"
            . "$item_path"
        elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]; then

            c_test "$item_path"

        fi

    done
}

rr() {
    echo -e "${CYAN}--- rr() ---${NORMAL}" #started functions

    echo -e "${ULINE} exec "file://$HOME/.bashrc "${NORMAL}" #repit commands
    exec "$HOME/.bashrc"
}

tst_bash() {

    c_test "$PATH_OS/.qa/" 1>/dev/null
    c_test "$PATH_OS/.os/" 1>/dev/null
    c_test "$PATH_OS/.os/.sh/" 1>/dev/null
    c_test "$PATH_OS/" 1>/dev/null

}

# c_up "$PATH_OS/.qa/"
# c_up "$PATH_OS/.os/"f
# c_up "$PATH_OS/.os/.sh/"
# c_up "$PATH_OS/"

c_up "${COMMUNIS_PATH}"/Deploy_store/.qa
c_up "${COMMUNIS_PATH}"/Deploy_store/.os/
c_up "${COMMUNIS_PATH}"/Deploy_store/.os/.sh/
c_up "${COMMUNIS_PATH}"/Deploy_store/

if [[ -d ${FONSH_PATH}/actio ]]; then
    c_up "${FONSH_PATH}/actio"
fi

if [[ -d ${PLT_PATH}/actio ]]; then
    c_up "${PLT_PATH}/actio"
fi

. "${PLT_PATH}"/.d/.frc/a.frc

# if [ $HOSTTYPE == "altlinux" ]; then
#     code(){
#         codium
#     }
# fi

up_plt_cogos_

# upgit
# e_git

# echo -e "${BLUE}--- cp -rf /home/st/start/communis/Deploy_store/plt_bd/main_store/sys_stores /run/media/st/MY_ONE/ ---${NORMAL}"
# cp -rf /home/st/start/communis/Deploy_store/plt_bd/main_store/sys_stores /run/media/st/MY_ONE/
wrp_fifs2_ cp -rf ${COMMUNIS_PATH}/Deploy_store/plt_bd/main_store/sys_stores /run/media/st/MY_ONE/ -cd1 -cd2

add_PATH_
# ce_

cd_s "$PPWD" "$filename" "$LINENO"

#######
# . "$HOME/.cargo/env"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"
if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
