#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_lpic_/lpic_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

lpic_() {

local FNN=${FUNCNAME[0]}
local ORIGO_DIR=$PATH_FN/dir_$FNN
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
edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
return 0
fi
if [ "_tst" == "$1" ]; then
. "$ORIGO_DIR"/"$FNN"tst/exec.tst
return 0
fi
if [ "_lst" == "$1" ]; then
edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
return 0
fi
if [ "_go" == "$1" ]; then
edit_ "$PATH_FN"/dir_"$FNN"/
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
#? USE lpic_() -echo -deb
# path_name="$1"
# if [ $(is_root_01 "$1") -ne 1 ]; then
#     path_name=$PPWD/$path_name
# fi
unset_autoargs_lpic_(){
echo_lpic_=0
debug_lpic_=0
unset errmes_lpic_
unset outmes_lpic_
# any1_lpic_=0
# unset any2_lpic_
}
unset_autoargs_lpic_
garg_ ${FUNCNAME[0]} $@ 1>/dev/null
echo_deb_ ${echo_lpic_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
if [ ${debug_lpic_} -eq 1 ]; then
echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
echo "$errmes_lpic_: "$errmes_lpic_""
echo "$outmes_lpic_: "$outmes_lpic_""
fi
# -----------------------------------------------------------------------------------------
# ------------------------------------------
# ------------------------------------------
# -----------------------------------------------------------------------------------------
# altlinux_lpic_() {
#     :
# }
# fedora_lpic_() {
#     :
# }
# if [ $PLT_COGOS == "altlinux" ]; then
#     altlinux_lpic_
# fi
# if [ $PLT_COGOS == "fedora" ]; then
#     fedora_lpic_
# fi
unset_autoargs_lpic_
#!function body======================
#!function body===============================================
#!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in lpic_ $filename $LINENO"

}

# lpic_ @

unset filename
