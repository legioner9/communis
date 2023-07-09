#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_hh_/hh_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

hh_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"
    # T"ODO that
    # snip itis "fn: ${FNN}, with_args: $*, filename: $filename, line:_$LINENO"
    #{def_const_reciver}

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi
    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
MAIN: 
NAME: ${FUNCNAME[0]}()
ARGS:
CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
TAGS:
FLOW:
DEBUG:
EXAMP:${NORMAL}"
        return 0
    fi
    #{ctrl_args_reciver}

    #* echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    #? c_up "$ORIGO_DIR/_$FNN/_fn/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

    #!function body===================================================================
    #!function body===============================================
    #!function body======================
    #? amount_arg $# min_args max_args "in $FNN :: $*"
    #? USE hh_() -echo -deb
    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi
    unset_autoargs_hh_() {
        echo_hh_=0
        debug_hh_=0
        unset errmes_hh_
        unset outmes_hh_
        # any1_hh_=0
        # unset any2_hh_
    }
    unset_autoargs_hh_
    garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    echo_deb_ ${echo_hh_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
    if [ ${debug_hh_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_hh_: "$errmes_hh_""
        echo "$outmes_hh_: "$outmes_hh_""
    fi
    # -----------------------------------------------------------------------------------------
    # ------------------------------------------

    # INVER='\033[33;5;7m' # ${INVER}# инверсия
    # MIG='\e[41m'         # ${MIG}# мигание
    # BLACK='\033[0;30m'   # ${BLACK} # чёрный цвет знаков
    # RED='\033[0;31m'     # ${RED} # красный цвет знаков
    # GREEN='\033[0;32m'   # ${GREEN} # зелёный цвет знаков
    # YELLOW='\033[0;33m'  # ${YELLOW} # желтый цвет знаков
    # BLUE='\033[0;34m'    # ${BLUE} # синий цвет знаков
    # MAGENTA='\033[0;35m' # ${MAGENTA} # фиолетовый цвет знаков
    # CYAN='\033[0;36m'    # ${CYAN} # цвет морской волны знаков
    # GRAY='\033[0;37m'    # ${GRAY} # серый цвет знаков

    # BGBLACK='\033[40m'   # ${BGBLACK}
    # BGRED='\033[41m'     # ${BGRED}
    # BGGREEN='\033[42m'   # ${BGGREEN}
    # BGBROWN='\033[43m'   # ${BGBROWN}
    # BGBLUE='\033[44m'    # ${BGBLUE}
    # BGMAGENTA='\033[45m' # ${BGMAGENTA}
    # BGCYAN='\033[46m'    # ${BGCYAN}
    # BGGRAY='\033[47m'    # ${BGGRAY}
    # BGDEF='\033[49m'     # ${BGDEF}

    echo -e "${RED}
    main commanms devops:${BLUE}
    ${YELLOW}top     ${BLUE}{proces}            ([top -b -n 1], x - what col sort, <,> chng col sort, ^o mask seerch, = reset filters, W write conf, ? help)
    ${YELLOW}mount   ${BLUE}{}                  ([mount | grep "^/dev"],-B dir to dir, -v verb, -t type fs )
    ${YELLOW}blkid   ${BLUE}{param block part}  ()
    ${YELLOW}df      ${BLUE}{list mount parts}  ([df -Th | grep "^/dev"])
    ${YELLOW}fdisk   ${BLUE}{}                  ([fdisk -l])
    ${YELLOW}ncdu    ${BLUE}{inteact using fs}  ([ncdu <start dir>])
    ${YELLOW}udevadm ${MAGENTA}
${MAGENTA}        info          Query sysfs or the udev database${BLUE}
            udevadm info -a -p /sys/class/net/wlp4s0   {[a]ttr [p]ath about vcard}
${MAGENTA}        trigger       Request events from the kernel${BLUE}
${MAGENTA}        settle        Wait for pending udev events${BLUE}
${MAGENTA}        control       Control the udev daemon${BLUE}
${MAGENTA}        monitor       Listen to kernel and udev events${BLUE}
${MAGENTA}        test          Test an event run${BLUE}
${MAGENTA}        test-builtin  Test a built-in command${BLUE}

${BLUE}
    ls: sudo
    lshw 
    lsusb 
    lspci 
    lscpu 
    lsscsi
    ${RED}
    main commanms devops:${BLUE}
    ${YELLOW}format usb      ${BLUE}df -h (? name part)
                    sudo umount /dev{name_part[,/sdb1]}
                    sudo mkfs -t {linux(ext4|...)} -L NAME_USB /dev/[sdb1]
                    or sudo mkfs -t {win[vfat]} -n NAME_USB /dev/[sdb1]
                    ${YELLOW}or {gui} gparted${BLUE}



    ${NORMAL}" #print variable

    # ------------------------------------------
    # -----------------------------------------------------------------------------------------
    # altlinux_hh_() {
    #     :
    # }
    # fedora_hh_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_hh_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_hh_
    # fi
    unset_autoargs_hh_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in hh_ $filename $LINENO" &>/dev/null

}

# hh_ @

unset filename
