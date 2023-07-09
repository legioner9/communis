#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_dotnet_/_dotnet_/_sh/run_dotnet_variants.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

run_dotnet_variants(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    arr=()
        res=()
        arr+=("dotnet_")
        res+=("dotnet_")
        arr+=("run dotnet v.1")
        res+=("run_dotnet_v1")
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

        run_dotnet_v1(){
            echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
            
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