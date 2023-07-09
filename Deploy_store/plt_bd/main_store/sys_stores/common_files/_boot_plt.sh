#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

c_up_boot_plt() {
    echo -e "${CYAN}---c_up() \$1 = $1---${NORMAL}" #started functions
    IFS=$IIFS

    # cd_h "$1" "$filename" "$LINENO"
    if [ -d "$1" ]; then
        cd "$1"
    else
        read -p "\$1: $1 is not dir: Enter to exit 1 or ^C to enterapt"
        exit 1
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

cd "$idir"

unset filename
