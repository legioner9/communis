#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_pg_/_pg_/_sh/pg_install_fedora_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

zz_lib_case_4() {

    arr=()
    res=()
    arr+=("install postgresql")
    res+=("sudo dnf install postgresql-server postgresql-contrib")
    arr+=("start postgresql")
    res+=("sudo systemctl start postgresql")
    arr+=("enable with sys postgresql")
    res+=("sudo systemctl enable postgresql")
    # arr+=("eeeeeeeee")
    # res+=("ttttttttt")
    # arr+=("eeeeeeeee")
    # res+=("ttttttttt")
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
