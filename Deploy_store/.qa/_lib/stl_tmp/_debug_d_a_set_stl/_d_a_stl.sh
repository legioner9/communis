#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug_d_a_set_stl/_d_a_stl.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

c_up ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl

d_a_stl ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug_d_a_set_stl/

echo -e "${GREEN}\${_d_a_stl_[@]} = ${_d_a_stl_[*]}${NORMAL}" #print variable

cd_s ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_debug_d_a_set_stl/
root_a_ext_stl "rty"

echo -e "${GREEN}\${_root_a_ext_stl_[@]} = ${_root_a_ext_stl_[*]}${NORMAL}" #print variable

root_a_ext_stl # call without args 

echo -e "${GREEN}\${_root_a_ext_stl_[@]} = ${_root_a_ext_stl_[*]}${NORMAL}" #print variable

#up_lib_git ${FUNCNAME[0]}

unset filename