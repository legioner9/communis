#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/1_ini.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#upgit

unset filename
##

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

# \033[0m все атрибуты по умолчанию
# \033[1m жирный шрифт (интенсивный цвет)
# \033[2m полу яркий цвет (тёмно-серый, независимо от цвета)
# \033[4m подчеркивание
# \033[5m мигающий
# \033[7m реверсия (знаки приобретают цвет фона, а фон -- цвет знаков)

# \033[22m установить нормальную интенсивность
# \033[24m отменить подчеркивание
# \033[25m отменить мигание
# \033[27m отменить реверсию

# \033[30 чёрный цвет знаков
# \033[31 красный цвет знаков
# \033[32 зелёный цвет знаков
# \033[33 желтый цвет знаков
# \033[34 синий цвет знаков
# \033[35 фиолетовый цвет знаков
# \033[36 цвет морской волны знаков
# \033[37 серый цвет знаков

# \033[40 чёрный цвет фона
# \033[41 красный цвет фона
# \033[42 зелёный цвет фона
# \033[43 желтый цвет фона
# \033[44 синий цвет фона
# \033[45 фиолетовый цвет фона
# \033[46 цвет морской волны фона
# \033[47 серый цвет фона

INVER='\033[33;5;7m' # ${INVER}# инверсия
MIG='\e[41m'         # ${MIG}# мигание
BLACK='\033[0;30m'   # ${BLACK} # чёрный цвет знаков
RED='\033[0;31m'     # ${RED} # красный цвет знаков
GREEN='\033[0;32m'   # ${GREEN} # зелёный цвет знаков
YELLOW='\033[0;33m'  # ${YELLOW} # желтый цвет знаков
BLUE='\033[0;34m'    # ${BLUE} # синий цвет знаков
MAGENTA='\033[0;35m' # ${MAGENTA} # фиолетовый цвет знаков
CYAN='\033[0;36m'    # ${CYAN} # цвет морской волны знаков
GRAY='\033[0;37m'    # ${GRAY} # серый цвет знаков

BGBLACK='\033[40m'   # ${BGBLACK}
BGRED='\033[41m'     # ${BGRED}
BGGREEN='\033[42m'   # ${BGGREEN}
BGBROWN='\033[43m'   # ${BGBROWN}
BGBLUE='\033[44m'    # ${BGBLUE}
BGMAGENTA='\033[45m' # ${BGMAGENTA}
BGCYAN='\033[46m'    # ${BGCYAN}
BGGRAY='\033[47m'    # ${BGGRAY}
BGDEF='\033[49m'     # ${BGDEF}

HLIGHT='\033[1m' # ${HLIGHT} жирный шрифт (интенсивный цвет)
ULINE='\033[4m'  # ${ULINE} подчеркивание
LLIGHT='\033[2m' # ${LLIGHT} полу яркий цвет (тёмно-серый, независимо от цвета)

NORMAL='\033[0m' # ${NORMAL} # все атрибуты по умолчанию

# tput sgr0 # Возврат цвета в "нормальное" состояние



qq_pause_ini() {
    echo -e "${CYAN}---qq_pause() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions
    qq_point "$1" "$2" "$3"
    
    read -p "Press enter to continue or ^C for interrapt"
    
}

export qq_pause

qq_pause_ini() {
    echo -e "${CYAN}---qq_exit() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions
    
    qq_point "$1" "$2" "$3"
    
    read -p "Press enter to exit 1 or ^C for interrapt"
    
    exit 1
    
}

export qq_exit

# cp_s(){

# }



