#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl_tmp_3/u_debug_2.tst"

# NOT ANY echo !!!!!!!!!!!

flag=0 # from ANY test

ret_true_fail "$flag" "$filename"

unset flag
unset filename
