#!/bin/bash

#. "$HOME/.bashrc"

filename="00000/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
# echo "PD0 = $(pwd)"
PD="$(prs_f -d "$filename")"

c_to_h_ -u

c_src=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/lc_0.c
c_dist=$PD/lib/lc_0.c

cp -u $(prs_f -d "$c_src")/*.* "$PD"/lib/

cd "$PD" || qq_exit

echo -e "${BLUE}--- rm use/main.bexe ---${NORMAL}" #sistem info mesage
rm use/main.bexe
rm main.bexe

make -f auto.mk
make -f auto.mk clear

main_to_dotfnm
if [ -f main.bexe ]; then
    # echo -e "${BLUE}--- rm use/main.bexe ---${NORMAL}" #sistem info mesage
    # rm use/main.bexe
    echo -e "${BLUE}--- cp main.bexe use/ ---${NORMAL}" #sistem info mesage
    cp main.bexe use/
    echo -e "${BLUE}--- cd use/ ---${NORMAL}" #sistem info mesage
    cd use/ || qq_pause
    echo -e "${RED}--- start main.bexe ---${NORMAL}" #sistem info mesage
    ./main.bexe
    echo -e "${RED}--- end main.bexe ---${NORMAL}" #sistem info mesage
else
    echo -e "${RED}--- compile ERROR ---${NORMAL}" #exit 1
fi

# make -f auto.mk clear

unset filename

cd "$idir"