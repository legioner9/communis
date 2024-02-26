#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/_debug/aa_infs.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

aa_infs(){
    REPLY=.
    while [ -n "$REPLY" ];do
        
        select d in $(ls -a);do
            echo -e "${GREEN}\$REPLAY = $REPLY${NORMAL}" #print variable
            if [ -d "${d}" ] ; then
                
                if ! cd "${d}" ;then
                    echo -e "${RED}---error cd "${d}"---${NORMAL}" #exit 1
                fi
                               
                echo -e "${BLUE}---pwd: $(pwd)---${NORMAL}" #sistem info mesage

                elif [ -f "${d}" ]; then

                echo -e "${BLUE}---start cat---${NORMAL}" #sistem info mesage
                cat "${d}"
                echo -e "${BLUE}---end cat---${NORMAL}" #sistem info mesage
                
            else
                echo "Don't know what to do with: ${REPLY}"
                
            fi
            break
            
        done
    done
}

unset filename