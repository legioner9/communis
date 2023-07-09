#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_dotnet_/_dotnet_/_sh/dotnet_init_flow.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

dotnet_init_flow() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    arr=()
    res=()
    arr+=("dotnet_")
    res+=("dotnet_")
    arr+=("install v.1 : dotnet-install.sh -c Current")
    res+=("${PATH_MAIN_REPO_FN_DIR}/dir_dotnet_/_dotnet_/_dotnet/_dotnet-install.sh -c Current")
    arr+=("dnf install dotnet")
    res+=("dnf install dotnet")
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
        dotnet_
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        dotnet_
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        ;;
    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        ${res[4]}
        ;;
    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        ${res[5]}
        ;;
    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        ;;

    *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;

    esac

}

unset filename
