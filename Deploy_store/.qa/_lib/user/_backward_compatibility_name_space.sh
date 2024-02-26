#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/backward_compatibility_name_space.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# e_exer() {   
#     echo -e "${CYAN}---e_exer() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions
#                                       #$1 error message
#     echo -e "${RED}---message: $1---${NORMAL}" #exit
#     echo -e "${RED}---file: $2---${NORMAL}"    #exit 1
#     echo -e "${RED}---line: $3---${NORMAL}"    #exit 1
#     read -p "Press enter to continue and exit 1"
#     exit 1
# }

# export e_exer

unset filename