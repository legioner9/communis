#!/bin/bash

# HOME/.bashrc"

filename="$PATH_OS/.qa/sis_git.2/git_enter.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

qqq_enter(){
    
    echo -e "${CYAN}---qqq_enter() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions
    
    arr_enter=("update_all" "update_repo" "add_repo" "delete_repo" "init_all" "delete_all")
    
    PS3="eligendi actiones: "
    
    select dilectus in "${arr_enter[@]}"; do
        
        echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
        break
        
    done
    
    
    case $dilectus in
        
        "update_all")
            
            echo -e "${CYAN}---start menu update_all () $.1="$filename" $.2="$LINENO"---${NORMAL}" #started functions
            rr
            qq_pause "update_all?" "$filename" "$LINENO"
            update_all_menu "$filename" "$LINENO"
            
        ;;
        
        "add_repo")
            
            
            echo -e "${CYAN}---start menu add_repo "$filename" "$LINENO"---${NORMAL}" #started functions
            rr
            qq_pause "add_repo?" "$filename" "$LINENO"
            add_repo_menu "$filename" "$LINENO"
            
        ;;
        
        "delete_repo")
            
            echo -e "${CYAN}---start menu delete_repo "$filename" "$LINENO"---${NORMAL}" #started functions
            rr
            qq_pause "delete_repo?" "$filename" "$LINENO"
            delete_repo_menu "$filename" "$LINENO"
            
            
        ;;
        
        "update_repo")
            
            echo -e "${CYAN}---start menu update_repo "$filename" "$LINENO"---${NORMAL}" #started functions
            rr
            qq_pause "update_repo?" "$filename" "$LINENO"
            update_repo_menu "$filename" "$LINENO"
            
            
        ;;
        
        "init_all")
            echo -e "${CYAN}---start menu init_all "$filename" "$LINENO"---${NORMAL}" #started functions
            
            rr
            
            if [ -d "$repo_path/_repo/" ];then
                
                echo -e "${RED}---q_init INIT ? you push all before? [y]/n---${NORMAL}" #exit 1
                
                # echo -e "${ULINE}read $yess${NORMAL}" #repit commands
                read -r yess
                echo -e "${GREEN}\$yess = $yess${NORMAL}" #print variable
                
                if [ "$yess" == "y" ]; then
                    
                    echo -e "${BLUE}---be update all before init all---${NORMAL}" #sistem info mesage
                    
                    echo -e "${CYAN}---start menu update_all "$filename" "$LINENO"---${NORMAL}" #started functions
                    qq_pause "update_all before init_all?" "$filename" "$LINENO"
                    update_all_menu "$filename" "$LINENO"
                else
                    echo -e "${BLUE}---update all aborted - only init all---${NORMAL}" #sistem info mesage
                fi
                
                
            fi
            
            echo -e "${CYAN}---init_all "$filename" "$LINENO"--${NORMAL}" #started functions
            qq_pause "init_all?" "$filename" "$LINENO"
            init_all_menu "$filename" "$LINENO"
            
        ;;
        
        "delete_all")
            echo -e "${CYAN}---start menu init_all "$filename" "$LINENO"---${NORMAL}" #started functions
            
            rr
            
            if [ -d "$repo_path/_repo/" ];then
                
                echo -e "${RED}---delete_all ?!!! [y]/n---${NORMAL}" #exit 1
                
                # echo -e "${ULINE}read $yess${NORMAL}" #repit commands
                read -r yess
                echo -e "${GREEN}\$yess = $yess${NORMAL}" #print variable
                
                if [ "$yess" == "y" ]; then
                    
                    echo -e "${BLUE}---be update all before init all---${NORMAL}" #sistem info mesage
                    
                    echo -e "${CYAN}---start menu delete_all "$filename" "$LINENO"---${NORMAL}" #started functions
                    qq_pause "delete_all?" "$filename" "$LINENO"
                    delete_all_menu "$filename" "$LINENO"
                else
                    echo -e "${BLUE}---delete_all aborted - wish user---${NORMAL}" #sistem info mesage
                fi
                
            else
                
                echo -e "${BLUE}---delete_all aborted - Repo not exsist ---${NORMAL}" #sistem info mesage
                
            fi
            
            
        ;;
        
        *)
            
            echo -e "${BLUE}---start menu dilectus is wrong---${NORMAL}" #sistem info mesage
            qq_pause "any error?" "$filename" "$LINENO"
            
        ;;
    esac
    
}

export qq_enter

update_all_menu(){
    echo -e "${CYAN}---update_all_menu() "$1" "$2"---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    for exsist_repo in "${exsist_arr_repo[@]}"; do
        update_repo "$exsist_repo"
    done
    
}

export qq_enter

update_repo_menu(){
    echo -e "${CYAN}---update_repo_menu() "$1" "$2"---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    git_choice_exist
    update_repo "$_git_choice_exist_"
    
    unset _git_choice_exist_
    
}

export update_repo_menu

add_repo_menu(){
    echo -e "${CYAN}---add_repo_menu() "$1" "$2"---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    git_choice_maybe "$1" "$2"
    create_repo_name "$_git_choice_maybe_" "$1" "$2"
    
    unset _git_choice_maybe_
    
}

export add_repo_menu

delete_repo_menu(){
    echo -e "${CYAN}---delete_repo_menu() "$1" "$2"---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    git_choice_exist "$1" "$2"
    delete_repo "$_git_choice_exist_" "$1" "$2"
    
    unset _git_choice_exist_
}

export delete_repo_menu

init_all_menu(){
    echo -e "${CYAN}---init_all_menu() "$1" "$2"---${NORMAL}" #started function
    
    init_gst
    
}

export init_all_menu

update_all_menu(){
    echo -e "${CYAN}---update_all_menu() "$1" "$2"---${NORMAL}" #started functions
    
    if_git_exist "$1" "$2"
    
    for exsist_repo in "${exsist_arr_repo[@]}"; do
        update_repo "$exsist_repo"
    done
    
}

update_repo(){ #$1:$repo
    echo -e "${CYAN}---update_repo() $.1=$1 $.2=$2 $.3=$3 ---${NORMAL}" #started functions
    
    cd_h "$repo_path/_repo/$1" "$2" "$3"
    git_pull "$repo_path/_repo/$1" "$filename" "$LINENO"
    cd_h "$repo_path/_repo/$1" "$2" "$3"
    git_push "$repo_path/_repo/$1" "$filename" "$LINENO"
    
}

export update_repo

delete_repo(){
    echo -e "${CYAN}---delete_repo() $.1=$1---${NORMAL}" #started functions
    
    for bare_path  in "${bare_arr_path[@]}"; do
        rm_h "$bare_path/$1" "$2" "$3"
    done
    
    rm_h "$repo_path/_bare/$1" "$2" "$3"
    rm_h "$repo_path/_repo/$1" "$2" "$3"
    
}

export delete_repo

delete_all_menu(){
    echo -e "${CYAN}---delete_all_menu() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions
    
    rm_h $repo_path "$filename" "$LINENO"
    
    for bare_path in "${bare_arr_path[@]}";do
        
        rm_h "$bare_path" "$filename" "$LINENO"
        
    done
    
}
git_choice_maybe(){
    echo -e "${CYAN}---git_choice_maybe() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions
    
    PS3="choise repo: "
    
    echo -e "${GREEN}\${to_add_arr_repo[@]} = ${to_add_arr_repo[*]}${NORMAL}" #print variable
    select selected in "${to_add_arr_repo[@]}";do
        echo -e "${GREEN}\$selected = $selected${NORMAL}" #print variable
        _git_choice_maybe_=$selected
        break
    done
    
}

git_choice_exist(){
    echo -e "${CYAN}---git_choice_exist() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions
    
    PS3="choise repo: "
    
    echo -e "${GREEN}\${exsist_arr_repo[@]} = ${exsist_arr_repo[*]}${NORMAL}" #print variable
    select selected in "${exsist_arr_repo[@]}";do
        echo -e "${GREEN}\$selected = $selected${NORMAL}" #print variable
        _git_choice_exist_=$selected
        break
    done
    
    export _git_choice_exist_
    
}




unset filename