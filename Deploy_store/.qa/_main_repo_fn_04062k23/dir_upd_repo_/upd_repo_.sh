#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_upd_repo_/upd_repo_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

upd_repo_() {
    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $@${NORMAL}"             #print variable
    
    c_up "$ORIGO_DIR/_$FNN/_sh/"
    
    arr=()
    res=()
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    
    case $1 in
        
        "_0")
            echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
            magic_nm_ "$FNN"
            
        ;;
        
        # "${arr[3]}")
        #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        #     ${res[3]}
        # ;;
        
        *)
            echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage
            
            echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable
            
            #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
            #EXTEND++++++++++++++++++++++++++++++++++++++
            #EXTEND++++++++++++++++++++++
            
            # # incude fn_libs------------------------------------------
            c_up "$ORIGO_DIR/_$FNN/_sh"
            
            # # UP in_file_variables------------------------------------
            # path_dir_in=$ORIGO_DIR/_$FNN/_in
            
            # cd_h $path_dir_in
            
            # unset _f2a_
            # unset item
            # args_arr_name=()
            # for item in *; do
            #     ext=${item##*.}
            #     name=${item%.*}
            #     cname=${name:1}
            #     # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
            #     # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
            #     if [ $ext = "var" ]; then
            #         args_arr_name+=($cname)
            #         # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            #         # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
            #         f2a $path_dir_in/$item
            #         # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable
            
            #         declare $cname="${_f2a_[*]}"
            
            #         unset _f2a_
            #         unset item
            #     fi
            
            # done
            
            # echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable
            
            # #!function body start--------------------------------------------
            # echo -e "${GREEN}\${res_[@]} = ${res_[*]}${NORMAL}" #print variable
            # echo -e "${GREEN}\${arr_[@]} = ${arr_[*]}${NORMAL}" #print variable
            
            # IFS=', ' read -r -a arr <<<"${arr_[0]}"
            # IFS=', ' read -r -a res <<<"${res_[0]}"
            
            # unset item
            # echo "arr:"
            # for item in ${arr[@]}; do
            #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            # done
            
            # unset item
            # echo "res:"
            # for item in ${res[@]}; do
            #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            # done
            # unset item
            
            #EXTEND++++++++++++++++++++++
            #EXTEND++++++++++++++++++++++++++++++++++++++
            #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
            #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            
            cd_h "$PPWD"
            
            #!choiсe_arg_from_arr>>>>>>>>>>>>>>>>>
            
            # PS3="eligendi actiones (var): "
            # select item in "${var[@]}";do
            #     var_=$item
            #     break
            # done
            
            # PS3="eligendi actiones (tml): "
            # select item in "${tml[@]}";do
            #     tml_=$item
            #     break
            # done
            
            #!end choiсe_arg_from_arr>>>>>>>>>>>>>
            
            #!function body===================================================================
            #!function body===============================================
            #!function body======================
            
            
            arr=()
            res=()
            arr+=("Add Git_store and add pre_push with bcp from .git")
            res+=("add_pre_push_bcp_dotgit")
            # arr+=("eeeeeeeee")
            # res+=("ttttttttt")
            
            PS3="eligendi actiones: "
            
            select item in "${arr[@]}";do
                
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
            
            
            #!function body======================
            #!function body===============================================
            #!function body===================================================================
            
            #! Recurs exit after last args ($2)
            # if [ -n "$2" ]; then
            #     echo -e "${BLUE}---$2 start! exist ---${NORMAL}" #sistem info mesage
            #     "$2"
            
            # fi
            
            #!function body end--------------------------------------------
        ;;
        
    esac
    
}

# upd_repo_ @

unset filename
