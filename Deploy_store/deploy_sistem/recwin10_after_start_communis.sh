#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/deploy_sistem/recwin10_after_start_communis.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

recwin10_after_start_communis(){
    echo -e "${CYAN}---recwin10_after_start_communis() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions
    
    # cp_rm_h ${COMMUNIS_PATH}/Deploy_store/.os $HOME/.os  $filename $LINENO
    # cp_rm_h ${COMMUNIS_PATH}/Deploy_store/.qa $HOME/.qa  $filename $LINENO
    
    cp_rm_h "$HOME/.bashrc" "${COMMUNIS_PATH}/Deploy_store/_arhwin10/.bashrc" "$filename" "$LINENO"
    cp_rm_h "$HOME/.gituid" "${COMMUNIS_PATH}/Deploy_store/_arhwin10/.gituid" "$filename" "$LINENO"
    cp_rm_h "$HOME/.gitrepo" "${COMMUNIS_PATH}/Deploy_store/_arhwin10/.gitrepo" "$filename" "$LINENO"

}

export recwin10_after_start_communis

unset filename