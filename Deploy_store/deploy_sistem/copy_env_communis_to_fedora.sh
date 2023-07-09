#!/bin/bash

#. "$HOME/.bashrc"

filename=""${COMMUNIS_PATH}"/Deploy_store/deploy_sistem/copy_env_communis_to_fedora.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

copy_env_communis_to_fedora(){
    
    # "${COMMUNIS_PATH}"/Deploy_store/.os cp_rm_h $HOME/_.os $filename $LINENO
    # cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/.qa $HOME/_.qa $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/snippets $HOME/.config/Code/User/_snippets $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/keybindings.json $HOME/.config/Code/User/_keybindings.json $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/launch.json $HOME/.vscode/_launch.json $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/settings.json $HOME/.vscode/_settings.json $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/vscode/tasks.json $HOME/.vscode/_tasks.json $filename $LINENO

    
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.bashrc $HOME/_.bashrc $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.bashlib $HOME/_.bashlib $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.gitconfig $HOME/_.gitconfig $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.gituid $HOME/_.gituid $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.gitrepo $HOME/_.gitrepo $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.vimrc $HOME/_.vimrc $filename $LINENO
    cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.bash_profile $HOME/_.bash_profile $filename $LINENO
    # cp_rm_h "${COMMUNIS_PATH}"/Deploy_store/_arh/.xinitrc $HOME/_.xinitrc $filename $LINENO

}

export copy_env_communis_to_fedora

unset filename