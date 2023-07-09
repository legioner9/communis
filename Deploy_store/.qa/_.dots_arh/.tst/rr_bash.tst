#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PATH_TST_DIR}/rr_bash.tst" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# rr_>

# if  rr_>&2  ;then



# echo "ALL in rr_ util true"
# # echo "ANY in rr_ util fail" >&2
# else
# # echo "ALL in rr_ util true"
# echo "ANY in rr_ util fail" >&2
# fi

# unset filename

if [ "$(rr_ 2>&1)" != "" ];then

echo "FALSE bash: rr_ in ${PATH_TST_DIR}/rr_bash.tst" >&2
else 
echo "TRUE"
fi