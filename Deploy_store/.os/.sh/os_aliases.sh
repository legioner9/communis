#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/.os/os_aliases.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

alias www="tldr"
alias ll="ls -l"
alias lla="ls -la"
alias updb="updatedb -l 0  --output=/home/st/.mydb.db"
alias llocate="locate -d ~/.mydb.db"





unset filename
