#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mancc_/_mancc_/_debug/macc_search_in_fns.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

mach="sock"

mancc_search_in_fns() {
    path_fns="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib"
    for item in $(dr2e $path_fns fns); do

        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # echo "$(grep -c "$mach" "$item")"

        if [ "$(grep -c "$mach" "$item")" -ne 0 ]; then
            echo "$item"
        fi

    done

}
# echo $(grep sock ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/socket_1.fns )
mancc_search_in_fns

cd "$idir"

unset filename
