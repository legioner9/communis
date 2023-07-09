#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/color.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

RED='\033[0;31m'     # ${RED} # красный цвет знаков
GREEN='\033[0;32m'   # ${GREEN} # зелёный цвет знаков
YELLOW='\033[0;33m'  # ${YELLOW} # желтый цвет знаков
BLUE='\0393[0;34m'    # ${BLUE} # синий цвет знаков
MAGENTA='\033[0;35m' # ${MAGENTA} # фиолетовый цвет знаков
CYAN='\033[0;36m'    # ${CYAN} # цвет морской волны знаков
NORMAL='\033[0m' # ${NORMAL} # все атрибуты по умолчанию

HLIGHT='\033[1m' # ${HLIGHT} жирный шрифт (интенсивный цвет)
ULINE='\033[4m'  # ${ULINE} подчеркивание


qqc_RED(){
    echo -ne "${RED}$1${NORMAL}"
}

export qqc_RED

qqc_GREEN(){
    echo -ne "${GREEN}$1${NORMAL}"
}

export qqc_GREEN

qqc_YELLOW(){
    echo -ne "${YELLOW}$1${NORMAL}"
}

export qqc_YELLOW

qqc_BLUE(){
    echo -ne "${BLUE}$1${NORMAL}"
}

export qqc_BLUE

qqc_MAGENTA(){
    echo -ne "${MAGENTA}$1${NORMAL}"
}

export qqc_MAGENTA

qqc_CYAN(){
    echo -ne "${CYAN}$1${NORMAL}"
}

export qqc_CYAN

qqc_HLIGHT(){
    echo -ne "${HLIGHT}$1${NORMAL}"
}

export qqc_HLIGHT

qqc_ULINE(){
    echo -ne "${ULINE}$1${NORMAL}"
}

export qqc_ULINE

unset filename