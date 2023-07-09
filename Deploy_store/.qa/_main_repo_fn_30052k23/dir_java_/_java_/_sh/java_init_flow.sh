#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_java_/_java_/_sh/java_init_flow.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

java_init_flow() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    arr=()
    res=()
    arr+=("java_")
    res+=("java_")
    arr+=("install java")
    res+=("ttttttttttt")
    arr+=("choice version java")
    res+=("sudo alternatives --config java")
    # arr+=("eeeeeeeee")
    # res+=("ttttttttt")

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        dilectus=$item
        break

    done

    case $dilectus in

    "${arr[0]}")
        echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
        ${res[0]}
        ;;

    "${arr[1]}")
        echo -e "${CYAN}---${arr[1]}---${NORMAL}" #started functions
        dnf search openjdk
        sudo dnf install java-latest-openjdk-devel.x86_64
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