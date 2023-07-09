#!/bin/bash

. "$HOME/.bashrc"

filename="$PATH_OS/.qa/_/_debag/tis_c_l.sh"

. $PATH_OS/.qa/lib/user/_c_l.sh

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

c_l "test_"

unset filename