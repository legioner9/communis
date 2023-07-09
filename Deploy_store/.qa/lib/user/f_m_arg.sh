#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/f_m_arg.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_m_arg() {

  # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
  local FNN=${FUNCNAME[0]}
  local PPW=$(prs_f -d "$PATH_OS/.qa/lib/user/f_m_arg.sh") # FILENAME==="filename"
  path_ext=$PPW/$FNN

  # amount_arg $# 1 1

  if [ "-h" == "$1" ]; then
    echo -e "${CYAN} ${FUNCNAME[0]}() help: 
          MAIN: 
          NAME: ${FUNCNAME[0]}()
          ARGS: 
          FLOW:${NORMAL}"
    return 0
  fi

  if [ "man" == "$1" ]; then
    edit_ "$path_ext".man
    return 0
  fi

  if [ "lst" == "$1" ]; then
    edit_ "$path_ext".lst
    return 0
  fi

  if [ "go" == "$1" ]; then
    edit_ "$PPW"
    return 0
  fi

  # amount_arg $# min_args max_args

  if [ $# -eq 0 ]; then
    qq_exit " $# num arg != 1" "$filename" "$LINENO"
  fi

  if [ $# -eq 1 ]; then
    set -- "$1" ".qa/_templates_sys/menu_1"
  fi
  # .qa/_templates_sys/tempus/menu_1_text_to_console

  echo -e "${GREEN}\${@} = ${*}${NORMAL}" #print variable

  echo -e "${CYAN}---f_m_arg() $*---${NORMAL}" #started functions

  qq_pause "($1) create in ($PWD) file ($1.sh) dir (_$1) with file (man_1) ?" "$filename" "$LINENO"

  cp_c "$HOME/$2" "$PWD/$1.sh" "$filename" "$LINENO"
  mkdir_h "$PWD/_$1" "$filename" "$LINENO"
  touch "$PWD/_$1/_man_1"
  sed -i 's/00000/'$1'/g' $PWD/$1.sh
}

export f_m

unset filename
