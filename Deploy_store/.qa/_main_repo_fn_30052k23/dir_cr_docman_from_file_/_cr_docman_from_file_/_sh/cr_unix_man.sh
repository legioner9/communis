#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_docman_from_file_/_cr_docman_from_file_/_sh/cr_unix_man.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

cr_unix_man() {                                           # $1 root $PPWD
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    echo -e "${GREEN}\${_f2a_all_[@]} = ${_f2a_all_[*]}${NORMAL}" #print variable
    qq_pause "in $(pwd) create unix system man?"

    cp catalog.md catalog~.md
    rm catalog.md

    # cp LIST_cat.md LIST_cat.md~.md
    # rm LIST_cat.md

    for item in "${_f2a_all_[@]}"; do

        if ! [ -d "$1/utils/" ]; then
            mkdir "$1/utils/"
        fi

        if [ ! $item == "" ]; then                    # ← see 'man test' for available unary and binary operators.
            echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            item_dir=$1/utils/$item
            mkdir "$item_dir"
            if [ ! -f "$item_dir/$item.man" ]; then
                cp "${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_docman_from_file_/_cr_docman_from_file_/_tml/doc_file/file_man.tml" "$item_dir/$item.man"
                item_file="$item_dir/$item.man"
                sed -i 's|00000|'"$item"'|g' "$item_dir/$item.man"
            fi
            
            # echo "[$item](catalog.md#$item)" >>LIST_cat.md
            # echo "" >>LIST_cat.md

            echo "## [$item](utils/$item/$item.man#$item)" >>catalog.md

            # echo "[ru.manpages.org $item](https://yandex.ru/search/?text=$item+site%3Ahttps%3A%2F%2Fru.manpages.org)" >>catalog.md # replace in place
            # echo "" >>catalog.md
            # echo "[man7.org $item](https://yandex.ru/search/?text=$item+site%3Ahttps%3A%2F%2Fman7.org%2Flinux%2Fman-pages)" >>catalog.md

            # echo "- [H_FILE](h_files/H_FILE.man##$item)" >>catalog.md
            # echo "- [SYNOPSIS](utils/$item/$item.man##SYNOPSIS)" >>catalog.md # replace in place
            # echo "- [RETURN](utils/$item/$item.man##RETURN)" >>catalog.md     # replace in place
            # echo "- [RETURN_ru](utils/$item/$item.man##RETURN_ru)" >>catalog.md
            # echo "- [DESCRIPTION](utils/$item/$item.man##DESCRIPTION)" >>catalog.md # replace in place
            # echo "- [DESCRIPTION_ru](utils/$item/$item.man##DESCRIPTION_ru)" >>catalog.md
            # echo "- [EXAMPLES](utils/$item/$item.man##EXAMPLES)" >>catalog.md # replace in place
            # echo "- [EXAMPLES_ru](utils/$item/$item.man##EXAMPLES_ru)" >>catalog.md
            # echo "- [ERRORS](utils/$item/$item.man##ERRORS)" >>catalog.md # replace in place
            # echo "- [ERRORS_ru](utils/$item/$item.man##ERRORS_ru)" >>catalog.md
            # echo "[linuxhint.com $item](https://yandex.ru/search/?text=mknod+site%3Ahttps%3A%2F%2Flinuxhint.com)" >>catalog.md
            # echo "- [BOOKS](utils/$item/$item.man##BOOKS)" >>catalog.md # replace in place
            # echo "[cpp.com.ru+ $item](https://yandex.ru/search/?text=$item+site%3Ahttps%3A%2F%2Fcpp.com.ru)" >>catalog.md
            # echo "- [BOOKS_ru](utils/$item/$item.man##BOOKS_ru)" >>catalog.md
            # replace in place
            echo "" >>catalog.md
        fi

    done
}

unset filename
