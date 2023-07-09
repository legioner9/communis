#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_sh/add_pre_push_bcp_dotgit.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

add_pre_push_bcp_dotgit() {                              # in ROOT_DIR
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    PPW=$(pwd)
    repo_name="$(basename "$PPW")" # root dir repo

    echo -e "${GREEN}\$PPW/Git_store/ = $PPW/Git_store/${NORMAL}" #print variable
    if ! [ -d "$PPW"/Git_store/ ]; then
        {
            echo -e "${ULINE}mkdir "$PPW"/Git_store/${NORMAL}" #repit commands
            mkdir "$PPW"/Git_store/

            echo -e "${ULINE}cp ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_tml/pre_push.tml "$PPW"/.git/hooks/pre-push${NORMAL}" #repit commands
            cp ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_tml/pre_push.tml "$PPW"/.git/hooks/pre-push

            echo -e "${ULINE}sed -i 's/00000/'"$repo_name"'/g' "$PPW"/.git/hooks/pre-push ${NORMAL}" #repit commands
            sed -i 's/00000/'"$repo_name"'/g' "$PPW"/.git/hooks/pre-push                             # replace in place

            echo -e "${ULINE} cp ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_tml/upd_root_repo "$PPW"/${NORMAL}" #repit commands
            cp -r ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_tml/upd_root_repo/* "$PPW"/

            echo -e "${ULINE} sed -i 's/00000/'"$repo_name"'/g' "$PPW"/main.tst ${NORMAL}" #repit commands
            sed -i 's/00000/'"$repo_name"'/g' "$PPW"/main.tst                             # replace in place

            # echo -e "${ULINE}cp ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_tml/test/ "$PPW"/.git/${NORMAL}" #repit commands
            # cp -r ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_upd_repo_/_upd_repo_/_tml/test/ "$PPW"/.git/

            # echo -e "${ULINE}sed -i 's/00000/'"$repo_name"'/g' "$PPW"/.git/test/unit_1.sh${NORMAL}" #repit commands
            # sed -i 's/00000/'"$repo_name"'/g' "$PPW"/.git/test/unit_1.sh # replace in place

            chmod +x "$PPW"/.git/hooks/pre-push
        }
    fi
}

unset filename
