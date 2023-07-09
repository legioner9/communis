#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/_HPW/book_pull_run_open.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

book_pull_run_open() {
    
    if ! [ -d "$HOME/_HPW/" ];then
        echo -e "${BLUE}--- _HPW not exsist ---${NORMAL}" #sistem info mesage
        mkdir "$HOME/_HPW/"
        cd "$HOME/_HPW/" || exit
        git init
        git clone git@github.com:legioner9/Book.git
        npm i
        npm run build
        code "$HOME/_HPW/Book/book.pdf"
        elif ! [ -d "$HOME/_HPW/Book/" ]; then
        cd "$HOME/_HPW/" || exit
        git clone git@github.com:legioner9/Book.git
        npm i
        npm run build
        code "$HOME/_HPW/Book/book.pdf"
        elif [ -d "$HOME/_HPW/Book/.git" ]; then
        cd "$HOME/_HPW/Book/" || exit
        git pull origin master
        npm i
        npm run build
        code "$HOME/_HPW/Book/book.pdf"
    else echo -e "${BLUE}--- app error - repo wrong ---${NORMAL}" #sistem info mesage
    fi
    
    # cd "$HOME/_HPW/Book" || exit
    
    
    # git pull origin master
    
    # npm run build
}

book_pull_run_open

unset filename