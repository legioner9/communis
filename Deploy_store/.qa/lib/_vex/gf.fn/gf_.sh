#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_OS/.qa/lib/_vex/gf_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gf_(){
    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}" #print variable
    echo -e "${GREEN}file = $0${NORMAL}" #print variable
    echo -e "${GREEN}args = $@${NORMAL}" #print variable
    FNN=${FUNCNAME[0]}
    PPWD=$PWD
    FLN=$0
    ARGS=$@
    
    
    # pause_mode
    # qq_pause "Start $FNN at this data set?"
    
    #! debag
    # cd_h "/home/st/.qa/lib/_vex/gf.fn" "$filename" "$LINENO"
    #!
    
    # vim_mode----------------------------------------------------
    if [ "$1" = "vim" ]; then
        if_d_s "$PPWD"
        gvim -v "$PPWD"
    else
        
        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable
        
        # incude fn_libs------------------------------------------
        c_up "$PPWD/_$FNN/_sh"
        
        # UP in_file_variables------------------------------------
        path_dir_in=$PPWD/_$FNN/_in
        
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
        
        
        #!function body end--------------------------------------------
        
    fi
    
}

# gf_ @

unset filename