#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/REPOBARE/_repo/communis/Deploy_store/.qa/lib/user/prs_f.sh"

# echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

prs_f() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    if [ "$1" = "test" ]; then
        prs_f_test "$@"

    elif
        [ "$1" = "-h" ]
    then
        path="/the/path/_foo.txt"
        echo -e "${BLUE}------------------------ 
path=/the/path/_foo.txt        
\$(prs_f -d $path)  : $(prs_f -d $path) 
\$(prs_f -ne $path) : $(prs_f -ne $path)   
\$(prs_f -n $path)  : $(prs_f -n $path)   
\$(prs_f -e $path)  : $(prs_f -e $path)   
\$(prs_f -pr $path) : $(prs_f -pr $path)   
\$(prs_f -po $path) : $(prs_f -po $path)    
----------------------${NORMAL}" #sistem info mesage

    else

        if [ $# -ne 2 ]; then
            plt_exit "mast be 2 parameters : illegal number of parameters : return 1"
            return 1
        fi

        name_ext="${2##*/}"

        if [ "$1" = "-d" ]; then
            dirname "$2"

        elif [ "$1" = "-ne" ]; then
            echo "$name_ext"

        elif [ "$1" = "-n" ]; then
            echo "${name_ext%.*}"

        elif [ "$1" = "-e" ]; then
            echo "${name_ext##*.}"

        elif [ "$1" = "-pr" ]; then
            echo "${name_ext:0:1}"

        elif [ "$1" = "-po" ]; then
            echo "${name_ext:1}"

        else
            plt_exit "$1: parameter mayby: -d -ne -n -e -pr -po : return 1"
            return 1
        fi

    fi

}

prs_f_test() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    path="/the/path/_foo.txt"
    # echo -e "${GREEN}\$path = $path${NORMAL}" #print variable

    dir="$(prs_f -d "$path")" # -d # /the/path
    # echo -e "${GREEN}\$dir = $dir${NORMAL}" #print variable

    name_ext="$(prs_f -ne "$path")" # -ne # # _foo.txt
    # echo -e "${GREEN}\$name_ext = $name_ext${NORMAL}" #print variable

    name="$(prs_f -n "$path")" # -n ## _foo
    # echo -e "${GREEN}\$name = $name${NORMAL}" #print variable

    ext="$(prs_f -e "$path")" # -e ## txt
    # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable

    pre="$(prs_f -pr "$path")" # -pr ## _
    # echo -e "${GREEN}\$pre = $pre${NORMAL}" #print variable

    post="$(prs_f -po "$path")" # -po ## foo.txt
    # echo -e "${GREEN}\$post = $post${NORMAL}" #print variable

    if [ "$dir" != "/the/path" ] || [ "$name_ext" != "_foo.txt" ] || [ "$name" != "_foo" ] || [ "$ext" != "txt" ] || [ "$pre" != "_" ] || [ "$post" != "foo.txt" ]; then
        echo "stl lib prs_f FAIL" >&2
    else
        echo "prs_f TRUE"
    fi
}

unset filename
