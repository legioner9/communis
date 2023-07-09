#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/plt_bd/sh/_rbl_communis.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

rm -rf "$HOME"/Bare_communis
mkdir "$HOME"/Bare_communis
cd "$HOME"/Bare_communis || read -p "$HOME/Bare_communis not EXIST: ^C for interrapt"
git init --bare

rm -rf "$HOME"/start
mkdir_ "$HOME"/start
cd "$HOME"/start || read -p "$HOME/start/ not EXIST: ^C for interrapt"
rm -rf ${COMMUNIS_PATH}
git clone git@github.com:legioner9/communis.git

# . ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/.bashrc_first_start

cd "$idir"

unset filename
