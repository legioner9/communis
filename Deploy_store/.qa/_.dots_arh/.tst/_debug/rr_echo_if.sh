#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_TST_DIR}/_debug/rr_echo_if.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

fn(){
#    ls ~/ 
#    return 1
# set -e
. "${PATH_TST_DIR}/_debug/file_with_err.sh"
# set +e
}


# if fn ;then
# echo "FALSE"
# else 
# echo "TRUE"
# fi

# set -e
# echo "$(echo "33" >&2)"

# echo "3333"
# unset filename

# . "${PATH_TST_DIR}/_debug/file_with_err.sh" && echo SUCCESS || echo FAIL

 if [ "$(rr_ 2>&1)" != "" ];then

echo "FALSE"
else 
echo "TRUE"
fi