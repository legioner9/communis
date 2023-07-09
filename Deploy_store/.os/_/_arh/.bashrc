#!/bin/bash

echo "start .bashrc"
IIFS=$IFS

export IIFS


. "$HOME/.os/git-prompt.sh"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\H \w$(__git_ps1 " (%s)")\$ '

if [ -f ~/.bash_aliases ]; then
    
    . ~/.bash_aliases
    
fi

rr(){
    . ~/.bashrc
}

export rr

ladd(){
    dir= $(ls "$1")
    echo "$dir"
}


. "$HOME/.os/git-prompt.sh"
. "$HOME/.os/git-alias.bash"
. "$HOME/.os/git-completion.bash"
# . "$HOME/.os/git-commands.bash"
# . "$HOME/.os/git_sub_commands.bash"
# . "$HOME/.os/bash-commands.bash"
# . "$HOME/.os/bash-alias.bash"
# . "$HOME/.os/commands.cat"
# . "$HOME/.os/backup.bash"
# . "$HOME/.os/git-var.bash"

. "$HOME/.os/gitSistem/gitrepo.sh"
. "$HOME/.os/gitSistem/gitlockal.sh"

. "$HOME/.os/lib_1/pars_to_arr.sh"

. "$HOME/.qa/lib/1_ini.sh"
. "$HOME/.qa/sis_git/up_git_memory.sh"
. "$HOME/.qa/sis_git/git_utils.sh" 
##

