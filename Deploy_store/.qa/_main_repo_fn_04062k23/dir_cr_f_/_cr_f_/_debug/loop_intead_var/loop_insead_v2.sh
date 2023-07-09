#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_debug/loop_intead_var/loop_insead_v2.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

# vi0_cr_f_=100

for ((i = 0; i < 1; i++)); do
    vi=vi"$i"_cr_f_
    eval vi"$i"_cr_f_="$i""$i"
    echo "\$vi=$vi"
    echo "\${!vi}=${!vi}"

    unset "$vi"

    echo "\$vi=$vi"
    echo "\${!vi}=${!vi}"
done

echo "\$vi0_cr_f_=$vi0_cr_f_"


cd "$idir"

unset filename
