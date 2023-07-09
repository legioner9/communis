#!/bin/bash

#. "$HOME/.bashrc"

filename="name_file.sh"


echo -e "${HLIGHT}---start file: $(pwd)$filename---${NORMAL}" # start file

# ------------- SCRIPT ------------- #

#!/bin/bash

echo
echo "# arguments called with ---->  ${@}     "
echo "# \$1 ---------------------->  $1       "
echo "# \$2 ---------------------->  $2       "
echo "# path to me --------------->  ${0}     "
echo "# parent path -------------->  ${0%/*}  "
echo "# my name ------------------>  ${0##*/} "
echo
exit

# ------------- CALLED ------------- #

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

unset filename