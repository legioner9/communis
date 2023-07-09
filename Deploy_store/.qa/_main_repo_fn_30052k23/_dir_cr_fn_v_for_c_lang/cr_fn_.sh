#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_cr_fn_/cr_fn_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_fn_() {

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
            MAIN: cr dir_sys for fn (?)
            NAME: ${FUNCNAME[0]}()
            ARGS:
            --name (..._|_..._) [plt_naming|fonsh_naming]
            --ratis \${PATH_FN}
            --radix c - clang radix inside
            --radix b - bash radix inside
            CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
            TAGS:
            EXAMP: cr_fn_ -debug -echo --name est_ --ratis \${PATH_FN} [, --radix (b,c)]
            FLOW:${NORMAL}"
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
    #? USE cr_fn_() -echo -deb

    # path_name="$1"
    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    unset_autoargs_cr_fn_() {
        echo_cr_fn_=0
        debug_cr_fn_=0
        unset errmes_cr_fn_
        unset outmes_cr_fn_

        unset name_cr_fn_
        unset fn_name

        unset ratis_cr_fn_
        unset rts_dir

        unset radix_cr_fn_
        rdx_b=0
        rdx_c=0

        # any1_cr_fn_=0
        # unset any2_cr_fn_
    }
    unset_autoargs_cr_fn_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    echo_deb_ ${echo_cr_fn_} "cntl echo_deb_ mode in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"

    if [ ${debug_cr_fn_} -eq 1 ]; then
        echo "DEBUG MODE in fn: ${FNN}, with args: $*, filename: $filename, line: $LINENO"
        echo "$errmes_cr_fn_: "$errmes_cr_fn_""
        echo "$outmes_cr_fn_: "$outmes_cr_fn_""
    fi

    #! check args and tranclate args_naming to variables_naming >>>>>>>>>>>>>>>>>

    ##? ratis_cr_fn_ -> rts_dir

    if [ -n ${ratis_cr_fn_} ]; then
        rts_dir=${ratis_cr_fn_}
    else
        qq_exit_ "arg --ratis [, \${PATH_FN}] by strong exist"
    fi

    ##? name_cr_fn_ -> fn_name

    if [ -n ${name_cr_fn_} ]; then
        fn_name=${name_cr_fn_}
    else
        qq_exit_ "arg --name ..._ by strong exist"
    fi

    ##? check radix_cr_fn_=(b|c)
    ###? b -> rdx_b=1, c -> rdx_c=1

    if [ -n ${radix_cr_fn_} ]; then
        fn_rdx=${radix_cr_fn_}
        if [ ${fn_rdx} == "b" ]; then
            rdx_b=1
        elif [ ${fn_rdx} == "c" ]; then
            rdx_c=1
        else
            qq_exit_ "\${radix_cr_fn_}: ${radix_cr_fn_}, value of --radix by strong (b|c)"
        fi
    else
        qq_exit_ "arg --radix (b|c) by strong exist"
    fi

    #! check args and tranclate args_naming to variables_naming <<<<<<<<<<<<<<<<<<

    # rdx_b, rdx_c - bash or clang flow
    # fn_name - name fn
    # rts_dir - ratis dir for fns

    fn_dir="${rts_dir}/dir_${fn_name}"                   # /dir_aaa_
    fn_inner_dir="${rts_dir}/dir_${fn_name}/_${fn_name}" # /dir_aaa_/_aaa_

    tml_dir=${ORIGO_DIR}/_${FNN}/_tml

    # debug questin
    if [ ${debug_cr_fn_} -eq 1 ]; then
        qq_pause "cr_fn_ ${fn_name} in ${PATH_FN}/dir_${fn_name} ? "
    fi

    wrp_fifs1_ mkdir ${fn_dir} -nd1
    # wrp_fifs1_ mkdir ${fn_inner_dir} -nd1

    wrp_fifs2_ cp -rf ${tml_dir}/_00000/. ${fn_inner_dir}/ -d1

    if [ ${rdx_b} -eq 1 ]; then
        wrp_fifs2_ cp -rf ${tml_dir}/_rds_b/. ${fn_dir}/_radix -d1
    fi

    if [ ${rdx_c} -eq 1 ]; then
        wrp_fifs2_ cp -rf ${tml_dir}/_rds_c/. ${fn_dir}/_radix -d1
    fi

    wrp_fifs2_ cp -rf ${tml_dir}/_tst/. ${fn_dir}/tst -d1
    wrp_fifs2_ cp -rf ${tml_dir}/f_f_ ${fn_dir}/${fn_name}.sh -f1


    cr_f_ ${item} --vi0 ${fn_name} --vr0 {fn_name}

    # altlinux_cr_fn_() {
    #     :
    # }
    # fedora_cr_fn_() {
    #     :
    # }
    # if [ $PLT_COGOS == "altlinux" ]; then
    #     altlinux_cr_fn_
    # fi
    # if [ $PLT_COGOS == "fedora" ]; then
    #     fedora_cr_fn_
    # fi
    unset_autoargs_cr_fn_
    #!function body======================
    #!function body===============================================
    #!function body===================================================================
    #{init_body_reciver}

    wrp_fifs1_ cd "$PPWD" -d1 --errmes "${FNN}, with args: $*, filename: $filename, line: $LINENO"

}

# cr_fn_ @

unset filename
