#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

# . "${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/treat_dir_recurs.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# str="PATH_OS/.os"
# repl="PATH_OS/.os"

# exec=$(sed -i 's|'$str'|'$repl'|')
# exec=$(cat)
# str="PATH_OS/.qa"
# repl="PATH_OS/.qa"

# sed -i 's|'$str'|'$repl'|' ${COMMUNIS_PATH}/Deploy_store/.qa*

# treat_dir_recurs '${COMMUNIS_PATH}/Deploy_store/.qa/_/_tmp/dir' $(sed -i 's|'$str'|'$repl'|')


# treat_dir_recurs_(){ # $2 command
#     echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions
#     cd "$1"
#     echo $PWD
    
#     for item in *; do
#         path_item="$1"/"$item"
#         if [ -f "$path_item" ] ; then
            
#             # Hardcord exec
#             sed -i 's|'HOME/.qa'|'PATH_OS/.qa'|' "$path_item"
#             sed -i 's|'HOME/.os'|'PATH_OS/.os'|' "$path_item"
            
#         else [ -d "$path_item" ]
#             cd_h "$path_item"
#             if [ -n "$(ls)" ]; then
#                 treat_dir_recurs_ "$path_item"
#                 cd ..
#             fi
#         fi
#     done
    
# }

# treat_dir_recurs_ ${COMMUNIS_PATH}/Deploy_store/.os
# treat_dir_recurs_ ${COMMUNIS_PATH}/Deploy_store/.qa

unset filename

