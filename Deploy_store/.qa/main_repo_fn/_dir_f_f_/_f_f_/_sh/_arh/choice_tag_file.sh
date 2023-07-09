#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_kk_/_kk_/_sh/choice_tag_file.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

choice_tag_file(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
    cd_h "$1"
    
    arr=()
    arr+=("..")
    
    unset $item
    for item in * ; do
        arr+=($item)
    done
    
    PS3="eligendi actiones: "
    unset $item
    
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}" #print variable
    
    select item in "${arr[@]}";do
        
        dilectus=$item
        break
        
    done
    
    
    
    case $dilectus in
        
        "..")
            echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            cd ..
            choice_tag_file "$PWD"
        ;;
        
        *)
            echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
            path=$PWD/$dilectus
            
            if [ -d $path ]; then
                
                choice_tag_file $path
                
                elif [ -f $path ];then
                
                _choice_tag_file_=$path
                
            fi
        ;;
        
    esac
    
}

unset filename