#!/bin/bash

# . "$HOME/.bashrc"

filename=""${COMMUNIS_PATH}"/Deploy_store/deploy_sistem/bck_to_start_communis.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git
bck_to_start_communis(){
    echo -e "${CYAN}---bck_to_start_communis() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions
    
    # cp_rm_h $HOME/.os "${COMMUNIS_PATH}"/Deploy_store/.os $filename $LINENO
    # cp_rm_h $HOME/.qa "${COMMUNIS_PATH}"/Deploy_store/.qa $filename $LINENO
    cp_rm_h $HOME/.config/Code/User/snippets "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/snippets $filename $LINENO
    cp_rm_h $HOME/.config/Code/User/keybindings.json "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/keybindings.json $filename $LINENO
    cp_rm_h $HOME/.vscode/launch.json "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/launch.json $filename $LINENO
    cp_rm_h $HOME/.vscode/settings.json "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/settings.json $filename $LINENO
    cp_rm_h $HOME/.vscode/tasks.json "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/tasks.json $filename $LINENO

    
    cp_rm_h $HOME/.bashrc "${COMMUNIS_PATH}"/Deploy_store/_arh/.bashrc $filename $LINENO
    cp_rm_h $HOME/.bashlib "${COMMUNIS_PATH}"/Deploy_store/_arh/.bashlib $filename $LINENO
    cp_rm_h $HOME/.gitconfig "${COMMUNIS_PATH}"/Deploy_store/_arh/.gitconfig $filename $LINENO
    cp_rm_h $HOME/.gituid "${COMMUNIS_PATH}"/Deploy_store/_arh/.gituid $filename $LINENO
    cp_rm_h $HOME/.gitrepo "${COMMUNIS_PATH}"/Deploy_store/_arh/.gitrepo $filename $LINENO
    cp_rm_h $HOME/.vimrc "${COMMUNIS_PATH}"/Deploy_store/_arh/.vimrc $filename $LINENO
    cp_rm_h $HOME/.bash_profile "${COMMUNIS_PATH}"/Deploy_store/_arh/.bash_profile $filename $LINENO
    # cp_rm_h $HOME/.xinitrc "${COMMUNIS_PATH}"/Deploy_store/_arh/.xinitrc $filename $LINENO

    
}

# bck_to_start_communis

export bck_to_start_communis

unset filename