#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/mmenu_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

mmenu_(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    
    arr=()
    res=()
    arr+=("first")
    res+=("echo")
    arr+=("second")
    res+=("echo")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    
    PS3="eligendi actiones: "
    
    _accum_=()
    
    
    _select_(){
        PS3="eligendi actiones: "
        select item in "${arr[@]}";do
        echo -e "${BLUE}---you select: $item ---${NORMAL}" #sistem info mesage
            _accum_+=("$item")
            break
        done
        _ques_
        
    }
    
    _ques_(){
        echo "Will seek(y)?"
        read -r yes
        if [ $yes = "y" ];then
            _select_
        fi
    }
    
    _case_(){ # $1=delectus
        # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        
        case $1 in
            
            "${arr[0]}")
                # echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
                ${res[0]} "${arr[0]}"
            ;;
            
            "${arr[1]}")
                # echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
                ${res[1]} "${arr[1]}"
            ;;
            
            # "${arr[2]}")
            #     echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            #     ${res[2]}
            # ;;
            
            *)
                echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
            ;;
            
        esac
    }
    

    _ques_

    unset item
    
    # _accum_=( "first" "first" )
    
    echo -e "${GREEN}\${_accum_[@]} = ${_accum_[*]}${NORMAL}" #print variable
    
    if [ -n "${_accum_[0]}" ]; then
        for item in "${_accum_[@]}"; do
            
            # echo -e "${ULINE}_case_ $item${NORMAL}" #repit commands
            _case_ "$item"
            
        done
    else
        echo -e "${BLUE}---{_accum_[@]} is empty---${NORMAL}" #sistem info mesage
    fi
    
    unset _accum_
    unset _case_
}

unset filename