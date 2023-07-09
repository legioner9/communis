#!/bin/bash

. "$HOME/.bashrc"

filename="$PATH_OS/.qa/sis_git.2/_debag/git_enter.deb.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

qqq_enter(){
    
    echo -e "${CYAN}---qq_enter()---${NORMAL}" #started functions
    
    arr_enter=("update_all" "update_repo" "add_repo" "delete_repo" "init_all")
    
    PS3="eligendi actiones: "
    
    # select dilectus in "${arr_enter[@]}"; do
    
    #     echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
    #     break
    
    # done
    
    dilectus="update_all"
    
    
    case $dilectus in
        
        "update_all")
            
            echo -e "${CYAN}---start menu update_all---${NORMAL}" #started functions
            qq_pause "update_all?" "$filename" "$LINENO"
            update_all_menu "$filename" "$LINENO"
            
        ;;
        
        "add_repo")
            
            
            echo -e "${CYAN}---start menu add_repo---${NORMAL}" #started functions
            qq_pause "add_repo?" "$filename" "$LINENO"
            add_repo_menu "$filename" "$LINENO"
            
        ;;
        
        "delete_repo")
            
            
            echo -e "${CYAN}---start menu delete_repo---${NORMAL}" #started functions
            qq_pause "delete_repo?" "$filename" "$LINENO"
            delete_repo_menu "$filename" "$LINENO"
            
            
        ;;
        
        "update_repo")
            
            echo -e "${CYAN}---start menu update_repo---${NORMAL}" #started functions
            qq_pause "update_repo?" "$filename" "$LINENO"
            update_repo_menu "$filename" "$LINENO"
            
            
        ;;
        
        "init_all")
            echo -e "${CYAN}---start menu update_all---${NORMAL}" #started functions

            if [ -d "$repo_path/_repo/" ];then
                echo -e "${CYAN}---start menu update_all---${NORMAL}" #started functions
                qq_pause "update_all before init_all?" "$filename" "$LINENO"
                update_all_menu "$filename" "$LINENO"
            fi
            
            
            
            echo -e "${CYAN}---init_all--${NORMAL}" #started functions
            qq_pause "init_all?" "$filename" "$LINENO"
            init_all_menu "$filename" "$LINENO"
            
        ;;
        
        *)
            
            echo -e "${BLUE}---start menu dilectus is wrong---${NORMAL}" #sistem info mesage
            qq_pause "any error?" "$filename" "$LINENO"
            
        ;;
    esac
    
}

export qq_enter

update_all_menu(){
    echo -e "${CYAN}---update_all_menu()---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    for exsist_repo in "${exsist_arr_repo[@]}"; do
        update_repo "$exsist_repo"
    done
    
}

export qq_enter

update_repo_menu(){
    echo -e "${CYAN}---update_repo_menu()---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    git_choice_exist
    update_repo _git_choice_exist_
    
    unset _git_choice_exist_
    
}

export update_repo_menu

add_repo_menu(){
    echo -e "${CYAN}---add_repo_menu()---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    git_choice_maybe
    create_repo_name _git_choice_maybe_
    
    unset _git_choice_maybe_
    
}

export add_repo_menu

delete_repo_menu(){
    echo -e "${CYAN}---delete_repo_menu()---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    git_choice_exist
    delete_repo _git_choice_exist_
    
    unset _git_choice_exist_
}

export delete_repo_menu

init_all_menu(){
    echo -e "${CYAN}---init_all_menu()---${NORMAL}" #started functions
    
    init_gst
    
}

export init_all_menu

update_repo(){ #$1:$repo
    echo -e "${CYAN}---update_repo() $.1=$1---${NORMAL}" #started functions
    
    cd_h "$repo_path/_repo/$1" "$filename" "$LINENO"
    git_pull
    cd_h "$repo_path/_repo/$1" "$filename" "$LINENO"
    git_push
    
}

export update_repo

delete_repo(){
    echo -e "${CYAN}---delete_repo() $.1=$1---${NORMAL}" #started functions
    
    for bare_path  in "${bare_arr_path[@]}"; do
        rm_h "$bare_path/$1" "$filename" "$LINENO"
    done
    
    rm_h "$repo_path/_bare/$1" "$filename" "$LINENO"
    rm_h "$repo_path/_repo/$1" "$filename" "$LINENO"
    
}

export delete_repo

qqq_enter


unset filename