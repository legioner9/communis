#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_docman_from_file_/_cr_docman_from_file_/_sh/cr_unix_man_from_listsh.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

cr_unix_man_from_listsh() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    echo -e "${GREEN}\${_f2a_all_[@]} = ${_f2a_all_[*]}${NORMAL}" #print variable
    qq_pause "in $(pwd) create from listh unix system man?"

    root_dir=$(pwd)

    if [ ! -d "$root_dir/listh" ]; then
        qq_exit "$root_dir/listh is not exist"
    fi

    for hfile in "$(ls listh/)"; do
        [ -e "$hfile" ] || break                    # handle the case of no *.wav files
        echo -e "${GREEN}\$hfile = $hfile${NORMAL}" #print variable
    done

}
unset filename
