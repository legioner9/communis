#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_garg_/_garg_/_debug/pototype/use_1.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

fn() {

    echo $@
    flag=0
    local cs_FN=0
    local wed_FN=0
    local ew_FN=0
    local e_FN=0

    for item_i in $@; do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        if [ $flag -eq 0 ]; then # expectation F_symbol
            # item_i="${!i}"
            if [ ${item_i:0:1} == "-" ] && [ ${item_i:1:1} != "-" ]; then
                cl_item=${item_i:1}

                name_i="$cl_item"_"$1"
                # echo -e "${GREEN}\$name_i = $name_i${NORMAL}" #print variable
                one=1
                eval $name_i=$one
                echo "$name_i = $one"

                flag=0
                continue
            fi
            if [ ${item_i:0:2} == "--" ]; then
                cl_item=${item_i:2}
                name_i="$cl_item"_"$1"
                # echo $name_i
                flag=1 
                continue
            fi
        fi
        if [ $flag -eq 1 ]; then
            # expectation value
            # echo -e "${GREEN}\$item_i = $item_i${NORMAL}" #print variable
            if [ ${item_i:0:1} == "-" ]; then # param is flow_symbol - not a value
                qq_exit "$item not value - that flow_symbol"
            fi
            if [ -n $name_i ]; then
                eval $name_i=$item_i
                echo "$name_i = $item_i"
            fi
            flag=0
        fi
    done

}

fn FN -ew --cs -ee erv --wed csac

cd "$idir"

unset filename
