#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_codium_/_mm_codium_/_fn/mm_codium_define_files_dirs.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

mm_codium_define_files_dirs() {
    echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    local FNN=${FUNCNAME[0]}
    local ARGS=($@)
    local NARGS=$#

    garg_ ${FNN} $@ 1>/dev/null

    d_name=$(dirname "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_mm_codium_/_mm_codium_/_fn/mm_codium_define_files_dirs.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
            MAIN: 
            NAME: ${FNN}()
            ARGS: 
            FLOW:
    
            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "${d_name}/${FNN}".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${d_name}/${FNN}".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "${d_name}/${FNN}".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        ${FNN}test
        return 0
    fi

    #is_amount_arg ${NARGS} min_equ max_equ

    #if [ "$?" -ne 0 ]; then
    #    qq_pause "is_amount_arg:: be return 1 <- Fail: ${FNN}"
    #    return 1
    #fi

    #! arg_path -> absolut path
    # arg_path=$(abs_path $(pwd) arg_path)

    #------------------------------------------------------------------
    #-----------------------------------

    echo -e "${BLUE}--- exec ${FNN} (num_menu - 1) ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("_fn with mm_codium_...")
    res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_mm_codium_/_mm_codium_/_fn")

    arr+=("all .exl files  for alt")
    res+=("echo ${PATH_EXL_DIR}/codium_bcp_dpl_alt")

    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")

    if [ $(num_01 $1) -eq 1 ] && [ $1 -le ${#arr[@]} ]; then

        num_res=$(($1 - 1))
        eval \${res[${num_res}]}
        return 0

    fi

    PS3="eligendi actiones: "

    select item in "${arr[@]}"; do

        dilectus=$item
        break

    done

    case $dilectus in

    "${arr[0]}")
        echo -e "${CYAN}--- ${res[0]} ---${NORMAL}" #started functions
        ${res[0]}

        ;;
    "${arr[1]}")
        echo -e "${CYAN}--- ${res[1]} ---${NORMAL}" #started functions
        ${res[1]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[2]}")
        echo -e "${CYAN}--- ${res[2]} ---${NORMAL}" #started functions
        ${res[2]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}--- ${res[3]} ---${NORMAL}" #started functions
        ${res[3]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}--- ${res[4]} ---${NORMAL}" #started functions
        ${res[4]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}--- ${res[5]} ---${NORMAL}" #started functions
        ${res[5]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}--- ${res[6]} ---${NORMAL}" #started functions
        ${res[6]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}--- ${res[7]} ---${NORMAL}" #started functions
        ${res[7]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}--- ${res[8]} ---${NORMAL}" #started functions
        ${res[8]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}--- ${res[9]} ---${NORMAL}" #started functions
        ${res[9]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}--- ${res[10]} ---${NORMAL}" #started functions
        ${res[10]}
        mm_codium_define_files_dirs "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}--- ${res[11]} ---${NORMAL}" #started functions
        ${res[11]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}--- ${res[12]} ---${NORMAL}" #started functions
        ${res[12]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}--- ${res[13]} ---${NORMAL}" #started functions
        ${res[13]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}--- ${res[14]} ---${NORMAL}" #started functions
        ${res[14]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}--- ${res[15]} ---${NORMAL}" #started functions
        ${res[15]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}--- ${res[16]} ---${NORMAL}" #started functions
        ${res[16]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}--- ${res[17]} ---${NORMAL}" #started functions
        ${res[17]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[18]}")
        echo -e "${CYAN}--- ${res[18]} ---${NORMAL}" #started functions
        ${res[18]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}--- ${res[19]} ---${NORMAL}" #started functions
        ${res[19]}
        mm_codium_define_files_dirs "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}--- ${res[20]} ---${NORMAL}" #started functions
        ${res[20]}
        mm_codium_define_files_dirs "$@"

        ;;

    *)
        echo -e "${BLUE}---error dilectus ---${NORMAL}" #sistem info mesage
        ;;
    esac
    #-----------------------------------
    #------------------------------------------------------------------

}

cd "$idir"

unset filename
