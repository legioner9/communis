>> call fuction
<< define var or arr

## .qa/sis_git.2/git_enter.sh

### *qq_enter
        arr_enter=("update_all" "update_repo" "add_repo" "delete_repo" "init_all")
        PS3="eligendi actiones: "
        select dilectus in "${arr_enter[@]}"
            echo info
        case $dilectus in
            "update_all")
                qq_pause
                update_all_menu

            "add_repo")
                qq_pause
                add_repo_menu

            "delete_repo")
                qq_pause
                delete_repo_menu

            "update_repo")
                qq_pause
                update_repo_menu

            "init_all")
                qq_pause
                init_all_menu

            *)
                qq_pause

        
### *update_all_menu #$@ : nothing
        for exsist_repo in "$exsist_arr_repo[@]"
            update_repo $exsist_repo


### *update_repo_menu #$@ : nothing
        >> git_choice_exist
        update_repo _git_choice_exist_
        unset _git_choice_exist_


### *add_repo_menu #$@ : nothing
        >> git_choice_maybe
        create_repo_name _git_choice_maybe_
        unset _git_choice_maybe_


### *delete_repo_menu #$@ : nothing
        >> git_choice_exist
        delete_repo _git_choice_exist_
        unset _git_choice_exist_

### *init_all_menu #$@ : nothin
        init_gst


### *update_repo #$1:$repo
        cd_h $repo_path/_repo/$1
        git_pull
        cd_h $repo_path/_repo/$1
        git_push

### *delete_repo #$1:$repo
        for bare_path  in "${bare_arr_path[@]}"
            rm_h $bare_path/$1
        rm_h "$repo_path/_bare/$1"
        rm_h "$repo_path/_repo/$1"





        

    



## .qa/sis_git.2/git_choice.sh

### *git_choice_exist #$@ : nothing
            PS3="eligendi actiones: "
            select dilectus in "${exsist_arr_repo[@]}"
            _git_choice_exist_=$dilectus
        export _git_choice_exist_

### *git_choice_maybe #$@ : nothing
            PS3="eligendi actiones: "
            select dilectus in "${to_add_arr_repo[@]}"
            _git_choice_maybe_=$dilectus
        export _git_choice_maybe_

### *git_choice_init #$@ : nothing
            PS3="eligendi actiones: "
            select dilectus in "${repo_arr_name[@]}"
            _git_choice_init_=$dilectus
        export _git_choice_init_



