#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_java_/_java_/_sh/run_java_variants.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

run_java_variants() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    arr=()
    res=()
    arr+=("java_")
    res+=("java_")
    arr+=("run class file")
    res+=("run_class_file_L_0")
    # arr+=("eeeeeeeee")
    # res+=("ttttttttt")
    # arr+=("eeeeeeeee")
    # res+=("ttttttttt")

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        dilectus=$item
        break

    done

    run_class_file_L_0() {
        echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

        unset _ch_prefile_in_dir_

        # ch_file_in_dir_ "$(pwd)"
        ch_prefile_in_dir_
        dilectus_1="$_ch_prefile_in_dir_"

        unset _ch_prefile_in_dir_

        name=$(prs_f -n "$dilectus_1")
        if javac "$dilectus_1"; then
            echo -e "${BLUE}--- rsult java "$name" : ---${NORMAL}" #sistem info mesage
            java "$name"
            else 
            echo -e "${RED}--- err java "$name" ---${NORMAL}" #sistem info mesage
        fi
        run_java_variants @

    }

    case $dilectus in

    "${arr[0]}")
        echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
        ${res[0]}
        ;;

    "${arr[1]}")
        echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
        ${res[1]}
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        ;;

    *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;

    esac

}

unset filename
