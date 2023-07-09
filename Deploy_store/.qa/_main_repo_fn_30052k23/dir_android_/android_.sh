#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_android_/android_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

android_() {

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

    #? c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    cd_h "$PPWD" 1>/dev/null

#!function body===================================================================
#!function body===============================================
#!function body======================
#? amount_arg $# min_args max_args "in $FNN :: $*"
#? USE android_() -echo -deb
# path_name="$1"
# if [ $(is_root_01 "$1") -ne 1 ]; then
#     path_name=$PPWD/$path_name
# fi
unset_autoargs_android_(){
echo_android_=0
debug_android_=0
unset errmes_android_
unset outmes_android_
# any1_android_=0
# unset any2_android_
}
unset_autoargs_android_
garg_ ${FUNCNAME[0]} $@ 1>/dev/null
echo_deb_ ${echo_android_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
if [ ${debug_android_} -eq 1 ]; then
echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
echo "$errmes_android_: "$errmes_android_""
echo "$outmes_android_: "$outmes_android_""
fi
-----------------------------------------------------------------------------------------
------------------------------------------
------------------------------------------
-----------------------------------------------------------------------------------------
# altlinux_android_() {
#     :
# }
# fedora_android_() {
#     :
# }
# if [ $PLT_COGOS == "altlinux" ]; then
#     altlinux_android_
# fi
# if [ $PLT_COGOS == "fedora" ]; then
#     fedora_android_
# fi
unset_autoargs_android_
#!function body======================
#!function body===============================================
#!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "in android_ $filename $LINENO"

}

# android_ @

unset filename
