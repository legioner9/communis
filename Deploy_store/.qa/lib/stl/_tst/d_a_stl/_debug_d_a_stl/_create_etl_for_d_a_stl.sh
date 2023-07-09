#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_debug_d_a_stl/cr_etl_for_d_a_stl.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

c_up ${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl

cd_h "${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/d_a_stl/_debug_d_a_stl"

echo -e "${ULINE}d_a_stl > ../_etl_d_a_stl_1${NORMAL}" #repit commands
rm ../_etl_d_a_stl_1
d_a_stl > ../_etl_d_a_stl_1

echo -e "${ULINE}d_a_stl "g" > ../_etl_d_a_stl_2${NORMAL}" #repit commands
rm ../_etl_d_a_stl_2
d_a_stl "g" > ../_etl_d_a_stl_2

unset filename