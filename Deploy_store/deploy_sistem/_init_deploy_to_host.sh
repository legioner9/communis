#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/deploy_sistem/init_deploy_to_host.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

init_deploy_to_host(){
    echo -e "${CYAN}---init_deploy_to_host() $*---${NORMAL}" #started functions
    
    _start_(){
        
        arr=()
        res=()
        arr+=("deploy is destroy - cancel!!!")
        res+=("echo bay)))")
        arr+=("deploy is my choice - let s go")
        res+=("_init_deploy_")
        # arr+=("ls -a - отображать все файлы, включая скрытые")
        # res+=("ls -a $*")
        
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
            
            *)
                echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
            ;;
            
        esac
        
    }
    
    _init_deploy_(){
        echo -e "${CYAN}---init_deploy() $*---${NORMAL}" #started functions
        
        # cp_rm_h ${COMMUNIS_PATH}/Deploy_store/.os $HOME/_.os $filename $LINENO
        # cp_rm_h ${COMMUNIS_PATH}/Deploy_store/.qa $HOME/_.qa $filename $LINENO
        
        cp_rm_h ${COMMUNIS_PATH}/Deploy_store/_arh/.bashrc $HOME/_.bashrc $filename $LINENO
        cp_rm_h ${COMMUNIS_PATH}/Deploy_store/_arh/.gituid $HOME/_.gituid $filename $LINENO
        cp_rm_h ${COMMUNIS_PATH}/Deploy_store/_arh/.gitrepo $HOME/_.gitrepo $filename $LINENO
        
    }

    _start_

    unset _start_
    unset _init_deploy_

}

export init_deploy_to_host

unset filename