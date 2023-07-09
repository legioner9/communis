#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/_HPW/book_pull_run_open.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

book_pull_run_open() {

        # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
        local FNN=${FUNCNAME[0]}
        local PPW=$(prs_f -d "${COMMUNIS_PATH}/_HPW/book_pull_run_open.sh") # FILENAME==="filename"
        path_ext=$PPW/$FNN
    
        # amount_arg $# 1 1
    
        if [ "-h" == "$1" ]; then
            echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            FLOW:${NORMAL}"
            return 0
        fi
    
        if [ "man" == "$1" ]; then
            edit_ "$path_ext".man
            return 0
        fi
    
        if [ "lst" == "$1" ]; then
            edit_ "$path_ext".lst
            return 0
        fi
    
        if [ "_go" == "$1" ]; then
            edit_ "$PPW"
            return 0
        fi
    
        # amount_arg $# min_args max_args
    
    
    if ! [ -d "$HOME/_HPW/" ];then
        echo -e "${BLUE}--- _HPW not exsist ---${NORMAL}" #sistem info mesage
        mkdir "$HOME/_HPW/"
        cd "$HOME/_HPW/" || exit
        git clone git@github.com:legioner9/Book.git
        cd "$HOME/_HPW/Book/" || exit
        npm i
        npm run build
        code "$HOME/_HPW/Book/release/Metaprogramming-ru.pdf"
        elif ! [ -d "$HOME/_HPW/Book/" ]; then
        cd "$HOME/_HPW/" || exit
        git clone git@github.com:legioner9/Book.git
        cd "$HOME/_HPW/Book/" || exit
        npm i
        npm run build
        code "$HOME/_HPW/Book/release/Metaprogramming-ru.pdf"
        elif [ -d "$HOME/_HPW/Book/.git" ]; then
        cd "$HOME/_HPW/Book/" || exit
        git pull origin master
        npm i
        npm run build
        code "$HOME/_HPW/Book/release/Metaprogramming-ru.pdf"
    else echo -e "${BLUE}--- app error - repo wrong ---${NORMAL}" #sistem info mesage
    fi
}
    


unset filename