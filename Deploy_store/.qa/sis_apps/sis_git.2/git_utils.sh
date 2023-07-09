#!/bin/bash

# . "$HOME/.bashrc"

filename="$PATH_OS/.qa/sis_git.2/git_utils.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

# . "$PATH_OS/.qa/sis_git/up_git_memory.sh"

ifgit() { # check fgit
    
    echo -e "${CYAN}---ifgit()---${NORMAL}"
    
    if [ "$fgit" -ne 0 ]; then
        
        qq_pause ".gitrepo and .gituid not complete" "$filename" "$LINENO"
        
    fi
}

export ifgit

e_git() {
    
    ifgit
    
    echo -e "${CYAN}---e_git()---${NORMAL}" #started functions
    
    echo -e "${GREEN}\$did = $did${NORMAL}"
    echo -e "${GREEN}\$repo_path = $repo_path${NORMAL}"
    echo -e "${GREEN}\$bare_arr_path = ${bare_arr_path[*]}${NORMAL}"
    echo -e "${GREEN}\$clone_path = $clone_path${NORMAL}"
    echo -e "${GREEN}\$repo_arr_name = ${repo_arr_name[*]}${NORMAL}"
    echo -e "${GREEN}\$exsist_arr_repo = ${exsist_arr_repo[*]}${NORMAL}"
    
    echo -e "${GREEN}\${allowed_arr_repo[@]} = ${allowed_arr_repo[*]}${NORMAL}" #print variable
    echo -e "${GREEN}\${to_add_arr_repo[@]} = ${to_add_arr_repo[*]}${NORMAL}" #print variable
    
    
    
    
    
}

export e_git

init_gst(){
    echo -e "${CYAN}---init_gst()---${NORMAL}" #started functions
    
    create_fs_gst
    create_repo_arr_name
    
}

export init_gst

create_fs_gst(){
    echo -e "${CYAN}---create_fs_gst()---${NORMAL}" #started functions
    
    mkdir_rm_h "$repo_path" "$filename" "$LINENO"
    mkdir_rm_h "$repo_path/_repo" "$filename" "$LINENO"
    mkdir_rm_h "$repo_path/_bare" "$filename" "$LINENO"
    
    
    
    
    for bare_path  in ${bare_arr_path[@]}; do
        # echo -e "${GREEN}\$bare_path = $bare_path${NORMAL}" #print variable
        
        mkdir_rm_h "$bare_path" "$filename" "$LINENO"
        
    done
    
}

export create_fs_gst

create_repo_arr_name(){
    echo -e "${CYAN}---create_repo_arr_name()---${NORMAL}" #started functions
    
    for repo_name in ${repo_arr_name[@]}; do
        # echo -e "${GREEN}\$repo_name = $repo_name${NORMAL}" #print variable
        create_repo_name "$repo_name"
        
    done
    
}

export create_repo_arr_name


create_repo_name(){ # $1=repo_name
    echo -e "${CYAN}---create_repo_name() $.1=$1---${NORMAL}" #started functions
    
    # create_repo_name_fs "$1"
    
    for bare_path  in "${bare_arr_path[@]}"; do
        # echo -e "${GREEN}\$bare_path = $bare_path${NORMAL}" #print variable
        
        cd_mkdir_h "$bare_path/$1" "$filename" "$LINENO"
        
        echo -e "${ULINE}git init --bare${NORMAL}" #repit commands
        git init --bare
        
    done
    
    cd_mkdir_h "$repo_path/_bare/$1" "$filename" "$LINENO"
    
    echo -e "${ULINE}git init --bare${NORMAL}" #repit commands
    git init --bare
    
    cd_h "$repo_path/_repo/" "$filename" "$LINENO"
    
    echo -e "${ULINE}git clone $clone_path/$1${NORMAL}" #repit commands
    git clone $clone_path/$1
    
    cd_h "$repo_path/_repo/$1" "$filename" "$LINENO"

    echo -e "${ULINE}git remote add "_bare" "$repo_path/_bare/$1"${NORMAL}" #repit commands
    git remote add "_bare" "$repo_path/_bare/$1"

    
    for bare_path  in ${bare_arr_path[@]}; do
        
        cd_h "$repo_path/_repo/$1" "$filename" "$LINENO"
        
        local bare_name
        bare_name=$(basename $bare_path)
        # echo -e "${GREEN}\$bare_name = $bare_name${NORMAL}" #print variable
        
        echo -e "${ULINE}git remote add "$bare_name" "$bare_path"${NORMAL}" #repit commands
        git remote add "$bare_name" "$bare_path/$1"
        
    done
    
    
}

export create_repo_name

get_exsist_repo(){
    echo -e "${CYAN}---get_exsist_repo()---${NORMAL}" #started functions
    
    if [ -d "$repo_path/_repo" ]; then
        cd_s "$repo_path/_repo" "$filename" "$LINENO"
        
        local i
        i=0
        
        for item in * ; do
            
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            
            _get_exsist_repo_[i]="$item"
            ((i++))
            
        done
        
    else
        
        echo -e "${BLUE}---Repo not init yet---${NORMAL}" #sistem info mesage
        _get_exsist_repo_=()
        
    fi
    
    export _get_exsist_repo_
    
}

export get_exsist_repo

maybe_add_arr_repo(){
    echo -e "${CYAN}---maybe_add_arr_repo()---${NORMAL}" #started functions
    # allowed_arr_repo extr exsist_arr_repo
    
    subtraction_arr_2 "${#exsist_arr_repo[@]}" "${exsist_arr_repo[@]}" "${#allowed_arr_repo[@]}" "${allowed_arr_repo[@]}"
    
    
    _maybe_add_arr_repo_=("${_subtraction_arr_2_[@]}")
    
    _subtraction_arr_2_=()
    
    export _maybe_add_arr_repo_
    
}

export maybe_add_arr_repo

if_git_exist(){
    echo -e "${CYAN}---if_git_exist() $.1=$1 $.2=$2---${NORMAL}" #started functions
    
    if ! [ -d "$repo_path/_repo/" ];then
        qq_exit "git not init yet" "$1" "$2"
    fi
    
}

unset filename
