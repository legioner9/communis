#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_f_f_/f_f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_f_(){
    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}" #print variable
    echo -e "${GREEN}file = $0${NORMAL}" #print variable
    echo -e "${GREEN}args = $@${NORMAL}" #print variable
    FNN=${FUNCNAME[0]}
    ORIGO_DIR=$PATH_FN/dir_f_f_
    PPWD=$PWD
    FLN=$0
    ARGS=$@
    
    
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
            
            # incude fn_libs------------------------------------------
            c_up "$ORIGO_DIR/_$FNN/_sh"
            
            # UP in_file_variables------------------------------------
            path_dir_in=$ORIGO_DIR/_$FNN/_in
            
            cd_h $path_dir_in
            
            unset _f2a_
            unset item
            args_arr_name=()
            for item in *;do
                ext=${item##*.}
                name=${item%.*}
                cname=${name:1}
                # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
                # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
                if [ $ext = "var" ];then
                    args_arr_name+=($cname)
                    # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
                    # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
                    f2a $path_dir_in/$item
                    # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable
                    
                    declare $cname=${_f2a_[@]}
                    
                    unset _f2a_
                    unset item
                fi
                
            done
            
            echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable
            
            #!function body start--------------------------------------------
            echo -e "${GREEN}\${var[@]} = ${var[*]}${NORMAL}" #print variable
            echo -e "${GREEN}\${tml[@]} = ${tml[*]}${NORMAL}" #print variable
            
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
            #===================================================================
            #===============================================
            #======================

            c_up "$ORIGO_DIR/_f_f_/_sh"
            
            if ! [ $# -eq 1 ] ; then
                qq_exit " $# num arg != 1" "$filename" "$LINENO"
            fi
            
            cd_h "$PATH_FN"
            
            qq_pause "($1) create !!! in ($PWD/dir_$1/) file ($1.sh) dir (_$1) ?" "$filename" "$LINENO"
            
            mkdir_h_ifnotexsist_h "$PWD/dir_$1" "$filename" "$LINENO"
            
            cp_h "$ORIGO_DIR/_f_f_/_tml/f_f_" "$PWD/dir_$1/$1.sh" "$filename" "$LINENO"
            # .qa/main_repo_fn/dir_f_f_/_f_f_/_tml/f_f_
            
            cp_h "$ORIGO_DIR/_f_f_/_tml/_00000"   "$PWD/dir_$1/_$1"
            
            mv "$PATH_FN/dir_$1/_$1/_config/mane_.tag" "$PATH_FN/dir_$1/_$1/_config/mane_$1.tag"
            
            sed -i 's/00000/'$1'/g' $PWD/dir_$1/$1.sh
            
            #======================
            #===============================================
            #===================================================================
            #!function body end--------------------------------------------
        ;;
        
    esac
    
    
}

# f_f_ @

unset filename