>> call fuction
<< define var or arr

## .bashrc

    >> .os/git-prompt.sh

### c_up
        IFS=$IIFS
        cd "$1"
        dir=$(pwd)
            for item in *; do
                item_path=$dir/$item
                if [ -f "$item_path" ] && [ "${item:0:1}" != "_" ]
                    . "$item_path"
                    elif [ -d "$item_path" ] && [ "${item:0:1}" != "_" ]
                        c_up "$item_path"


### rr
        . "$HOME/.bashrc"

    >> c_up "$PATH_OS/.qa/"
    >> c_up "$PATH_OS/.os/"
    >> c_up "${COMMUNIS_PATH}/Deploy_store/deploy_sistem"

    >> upgit
    >> e_git

## .qa/lib/0_ini.sh   

### cp_s
        if ! [ -e "$1" ]
            qq_exit
        if cp -fr "$1" "$2"
            echo info
            else qq_pause

### cp_h
        if ! [ -e "$1" ]; then
            qq_exit
        if cp -fr "$1" "$2" 
            echo info
            else qq_exit

### rm_s
        if [ -d $1 ]
            echo info
        if rm -fr "$1"
            else qq_pause

### rm_h
        if [ -d $1 ]
            echo info
        if rm -fr "$1"
            else qq_exit
    
### cp_rm_s
        if [ -e "$2" ]
            rm_h "$2" "$3" "$4"
        cp_s "$1" "$2" "$3" "$4"

### cp_rm_h
        if [ -e "$2" ]
            rm_h "$2" "$3" "$4"
        cp_h "$1" "$2" "$3" "$4"

### mkdir_rm_s
        if [ -d "$1" ]
            rm_h "$1" "$2" "$3"
        if mkdir "$1"
            echo info
            else qq_pause

### mkdir_rm_h
        if [ -d "$1" ]
            rm_h "$1" "$2" "$3"
        if mkdir "$1"
            echo info
            else qq_exit

### cd_s
        if ! [ -e "$1" ]
            qq_exit
        if cd "$1" 
            echo info
            else qq_pause   

### cd_h
        if ! [ -e "$1" ]
            qq_exit
        if cd "$1" 
            echo info
            else qq_exit  

### cd_mkdir_s
        mkdir_rm_h "$1" "$2" "$3"
        cd_s "$1" "$2" "$3"

### cd_mkdir_h
        mkdir_rm_h "$1" "$2" "$3"
        cd_h "$1" "$2" "$3"

### mkdir_h
        if mkdir "$1"
            echo info
            else qq_exit

## .qa/lib/1_ini.sh

### f2a
        for item in $(cat "$1")
            fs=${item:0:1}
            if [ "$fs" != "#" ]
                _f2a_[i]="$item"
    export _f2a_

### s2a
        IFS=$1
        for item in $2
            _s2a_[i]="$item"
        export _s2a_
        IFS=$IIFS
            

### e_exer
        read -p 
        exit 1

### pause
        read -p 

### f2a_all
        IFS=$IIFS
        for item in $(cat "$1")
            fs=${item:0:1}
            if [ "$fs" != "#" ]
                _f2a_all_[i]="$item"
                else 
                    comm=${item:1}
                    _f2a_all_[i]="$comm"
        export _f2a_all_

### qq_point
        echo info

### qq_pause
        qq_point "$1" "$2" "$3"
        read -p

### qq_exit
        qq_point "$1" "$2" "$3"
        read -p
        exit 1

## .qa/lib/2_arr.sh

    declare -a argv=("${@}")                           # All arguments in one big array
    declare -i len_1=${argv[0]}                        # Length of first array passad
    declare -a arr_1=("${argv[@]:1:$len_1}")           # First array
    declare -i len_2=${argv[(len_1 + 1)]}              # Length of second array passad
    declare -a arr_2=("${argv[@]:(len_1 + 2):$len_2}") # Second array
    declare -i totlen=${#argv[@]} 

### crossing_arr_2
        for item_2 in ${arr_2[@]}
            for item_1 in ${arr_1[@]}
                if [ "$item_1" = "$item_2" ]
                    _crossing_arr_2_[i]=$item_1
        export _crossing_arr_2_

### subtraction_arr_2
        for item_min in ${arr_2[@]}
            q=0
            for item_sub in ${arr_1[@]}
                if [ "$item_sub" = "$item_min" ]; then q=1
            if [ $q -eq 0 ]
                _subtraction_arr_2_[i]=$item_min
        export _subtraction_arr_2_

### union_arr_2
        for item_1 in ${arr_1[@]}
            _union_arr_2_[i]=$item_1
        for item_min in ${arr_2[@]}
            q=0
            for item_sub in ${arr_1[@]}
                if [ "$item_sub" = "$item_min" ]; then q=1
            if [ $q -eq 0 ]
                _union_arr_2_[i]=$item_min 
        export _union_arr_2_

### notcrossing_arr_2
        subtraction_arr_2 "${#arr_1[@]}" "${arr_1[@]}" "${#arr_2[@]}" "${arr_2[@]}"
        for item in "${_subtraction_arr_2_[@]}"
            _notcrossing_arr_2_[i]=$item
        unset _subtraction_arr_2_
        subtraction_arr_2 "${#arr_2[@]}" "${arr_2[@]}" "${#arr_1[@]}" "${arr_1[@]}"
        for item in "${_subtraction_arr_2_[@]}"
            _notcrossing_arr_2_[i]=$item
        unset _subtraction_arr_2_
        export _notcrossing_arr_2_

## .qa/sis_git.2/git_comands_lib.sh

### git_pull
### git_push

## .qa/sis_git.2/up_git_memory.sh

 ### upgit
        >> s2a '#' "$(cat $HOME/.gituid)" 
            export did=${_s2a_[0]}
            export repo_path=${_s2a_[1]}
            export bare_str_path=${_s2a_[2]}
            export clone_path=${_s2a_[3]}

        >> s2a ';' "$bare_str_path"
            export bare_arr_path=(${_s2a_[@]})

        >> get_exsist_repo 
            export exsist_arr_repo=(${_get_exsist_repo_[@]})

        >> f2a_all "$HOME/.gitrepo"
            export allowed_arr_repo=(${_f2a_all_[@]})

        >> maybe_add_arr_repo
            export to_add_arr_repo=(${_maybe_add_arr_repo_[@]})

        if [ -f "$HOME"/.gitrepo ]
            f2a "$HOME/.gitrepo"
            export repo_arr_name=(${_f2a_[@]})
            


    fgit << 0 or 1 or 2

    export fgit

## .qa/sis_git.2/git_utils.sh

### ifgit
        if [ "$fgit" -ne 0 ];
            qq_pause ".gitrepo and .gituid not complete"

### e_git
        ifgit

        echo $did
        echo $repo_path
        echo $bare_arr_path
        echo $clone_path
        echo $repo_arr_name
        echo $exsist_arr_repo
    
        echo ${allowed_arr_repo[@]}
        echo ${to_add_arr_repo[@]}

### init_gst
    
        >> create_fs_gst
        >> create_repo_arr_name

### create_fs_gst

        mkdir_rm_h "$repo_path"
        mkdir_rm_h "$repo_path/_repo"
        mkdir_rm_h "$repo_path/_bare"

        for bare_path  in ${bare_arr_path[@]}
            mkdir_rm_h "$bare_path"

### create_repo_arr_name

        for repo_name in ${repo_arr_name[@]}
            create_repo_name "$repo_name"

### create_repo_name

        for bare_path  in "${bare_arr_path[@]}"
            cd_mkdir_h "$bare_path/$1"
            git init --bare

        cd_mkdir_h "$repo_path/_bare/$1"
        git init --bare
        cd_h "$repo_path/_repo/"
        git clone $clone_path/$1
        cd_h "$repo_path/_repo/$1"

        for bare_path  in ${bare_arr_path[@]}
            cd_h "$repo_path/_repo/$1"
            bare_name=$(basename $bare_path)
            git remote add "$bare_name" "$bare_path"

### get_exsist_repo

        cd_h "$repo_path/_repo"

        for item in * 
            _get_exsist_repo_[i]="$item"

        export _get_exsist_repo_

### maybe_add_arr_repo

        subtraction_arr_2 "${#exsist_arr_repo[@]}" "${exsist_arr_repo[@]}" "${#allowed_arr_repo[@]}" "${allowed_arr_repo[@]}"
        _maybe_add_arr_repo_=("${_subtraction_arr_2_[@]}")

        export _maybe_add_arr_repo_

### *if_git_exist

        if ! [ -d "$repo_path/_repo" ]
            qq_exit

## .qa/sis_git.2/git_enter.sh

    
    *

