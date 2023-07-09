#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/tags/magic_nm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

magic_nm_(){
    echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
    
    arr=()
    arr+=("start")
    arr+=("edit")
    arr+=("vim")
    arr+=("man")
    arr+=("menu")
    arr+=("tag")
    arr+=("add_tag")
    # arr+=("add_free_tag")
    # arr+=("vim")
    # arr+=("vim")
    
    
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        dilectus=$item
        break
        
    done
    
    case $dilectus in
        
        "start")
            echo -e "${CYAN}---start mode---${NORMAL}" #started functions
            qq_pause "Start jj_ far enter params"
            echo "enter all params:"
            read -r params
            "$FNN" $params
            
        ;;
        
        "edit")
            echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
            if_d_s "$PATH_OS/.qa/main_repo_fn/_config/agno_tag"
            qq_pause "WARN not delete!!!Only add file and dir"
            gvim -v "$PATH_OS/.qa/main_repo_fn/_config/agno_tag"
            magic_nm_ "$FNN"
            
        ;;
        
        "vim")
            echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
            if_d_s "$ORIGO_DIR"
            gvim -v "$ORIGO_DIR"
            magic_nm_ "$FNN"
            
        ;;
        
        "man")
            echo -e "${CYAN}---man mode---${NORMAL}" #started functions
            if_d_s "$ORIGO_DIR"/_$FNN/_man
            man_is "$ORIGO_DIR"/_$FNN/_man
            magic_nm_ "$FNN"
            
        ;;
        
        "menu")
            echo -e "${CYAN}---menu mode---${NORMAL}" #started functions
            # if_f_h "$ORIGO_DIR/_$FNN/_sh/menu_$FNN.sh"
            # . "$ORIGO_DIR/_$FNN/_sh/menu_$FNN.sh"
            menu_nm_ "$FNN"
            magic_nm_ "$FNN"
        ;;
        
        "tag")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            tag_nm_ "$FNN"
            magic_nm_ "$FNN"
        ;;
        
        "add_tag")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            add_tag_nm_ "$FNN"
            magic_nm_ "$FNN"
        ;;
        
        # "add_free_tag")
        #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        #     add_free_tag_hh_
        #     magic_hh_ @
        # ;;
        
        # "${arr[3]}")
        #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        #     ${res[3]}
        # ;;
        
        *)
            echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage
        ;;
        
    esac
    
}


unset filename