#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/_vex/gf.fn/_gf_/_sh/dnl_data.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

dnl_data(){
    echo -e "${CYAN}---dnl_data() $*---${NORMAL}" #started functions
    
    # cd ../..
    
    path_dir_in=$PPWD/_gf_/_in
    
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
            
            declare -ax _$cname=${_f2a_[@]}
            
            export _$cname
            
            unset _f2a_
            
        fi
        unset item
    done
    
    
}


unset filename