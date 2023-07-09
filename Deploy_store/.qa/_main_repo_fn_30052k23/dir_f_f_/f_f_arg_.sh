#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_f_f_/f_f_arg_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_f_arg_() {

    unset ratis_f_f_
    unset dir_fns_
    unset name_fn_
    unset flow_

    local ARGS=($@)

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_FN}/dir_f_f_
    local PPWD=$PWD
    local FLN=$0

    local FNLOCK="fn: ${FNN}, with_args: $*, filename: ${PATH_FN}/dir_f_f_/${FNN}.sh, line: $LINENO"

    c_up "$ORIGO_DIR"/_f_f_/_fn/ 1>/dev/null

    if [ "man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_f_f_/f_f_.man
        return 0
    fi

    if [ "test" == "$1" ]; then
        f_f_test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_f_f_/f_f_.lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_f_f_/
        return 0
    fi

    if [ "_deb" == "$1" ]; then
        # echo "$FNN default debag not define"
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start_arg.sh
        return 0
    fi

    for int in 2 3 4 5; do
        if [ "_tst${int}" == "$1" ]; then

            . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex${int}_tst/exec._extst

            return 0
        fi
    done

    if [ "_tst" == "$1" ]; then
        # echo "$FNN default debag not define"

        rr_
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/start_check_extst.tst
        f_f_arg_ _diff

        return 0
    fi

    if [ "_extst" == "$1" ]; then
        # echo "$FNN default debag not define"
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/start_check_extst.tst
        return 0
    fi

    if [ "_mdeb" == "$1" ]; then
        # echo "$FNN default debag not define"
        f_f_mdeb
        return 0
    fi

    if [ "_diff" == "$1" ]; then
        # echo "$FNN default debag not define"
        diff -r ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_dir_for_nnn/dir_nnn2_ ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/ex1_tst/_examp_fn/dir_nnn2_
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: cr dir_sys for fn (
                wrap ower exl_ {
                    check unique name_fn_
                    rout flow_ to dir_fns_
                    pipe to exl_
                        name_fn_
                        dir_fns_
                })                   
            NAME: ${FUNCNAME[0]}()
            ARGS:
            TAGS:
            DEBUG: 
                f_f_arg_ _deb
                f_f_arg_ _tst\${int} . f_f_extst/dir_1/ex\${int}_tst/exec._extst
                    \${int} accoding <num> from f_f_arg_ --_flow <num>
                f_f_arg_ _tst (. f_f_extst/dir_1/ex1_tst/exec.extst)
                f_f_arg_ _diff (
                    compare 
                        f_f_extst/dir_1/ex1_tst/_dir_for_nnn  
                        f_f_extst/dir_1/ex1_tst/_examp_fn
                    recommended after f_f_arg_ _tst)
            EXAMP: 
                echo | f_f_arg_ --_name_fn <name> --_dir_fns <dir_fns> --_flow <num>
                    <num> = 
                        1 full (cre like f_f_ communis fn_fs_structure)
                        2 middle (any for plt fn_fs_structure)
                        3 mini (any for fonsh fn_fs_structure)

            FLOW:${NORMAL}"
        return 0
    fi
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"              #print variable
    echo -e "${GREEN}file = $0${NORMAL}"                 #print variable
    echo -e "${GREEN}args = $@${NORMAL}"                 #print variable

    # amount_arg $# 3 10

    #!! est_ ${ratis_f_f_} -n

    #? PARS ARGS -------------------------

    # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
    # garg_ ${FUNCNAME[0]} $@

    if ! garg2e2_ "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi

    #? g_args with cntl=value
    local g_args=($(garg2e2_ "${ARGS[@]}"))
    #? e_args is {ARGS[@]} without cntl and cmtl_value - as it's free
    local e_args=($(earg2e2_ "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(garg2e2_ "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done

    echo -e "${GREEN}\${g_args[@]} = ${g_args[*]}${NORMAL}" #print variable

    echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

    #===================================================================
    #===============================================
    #======================

    #! $1 ===> ${name_fn_}
    #! ${FONSH_PATH}/actio ===> ${dir_fns_}

    if typeset -F | grep -w ${name_fn_}; then
        plt_exit "${name_fn_} not unique"
        return 1
    fi

    local file_path
    local body
    local fn_body

    c_up "$ORIGO_DIR/_f_f_/_sh"

    # if ! [ $# -eq 1 ]; then
    #     qq_exit " $# num arg != 1" "$filename" "$LINENO"
    # fi

    # amount_arg $# 3 10
    #! hardcord ${"$PATH_FN"}
    # cd_h "$PATH_FN"
    wrp2_ cd --_xxd ${dir_fns_}

    # if [ ${flow_} -eq 1 ]; then
    #     tml_dir=${PATH_TML_DIR}/f_f_
    #     insert_dir=${PATH_INSERT_DIR}/f_f_
    #     exl_file=${PATH_EXL_DIR}/f_f_/1.exl
    #     sh_file=${PATH_EXL_DIR}/f_f_/1.sh
    #     # exl_file=${PATH_EXL_DIR}/f_f_/1_self_test_deb.exl
    # fi
    #! tml_dir
    # exl_ --list ${PATH_EXL_DIR}/f_f_/${flow_}_flow_env.exl
    # exl_ --list ${PATH_EXL_DIR}/f_f_/${flow_}/flow_env.exl

    exl_ --list ${PATH_EXL_DIR}/f_f_/env/flow_env.exl

    plt_pause "(${name_fn_}) create flow=${flow_} !!! in ($PWD/dir_${name_fn_}/) file (${name_fn_}.sh) dir (_${name_fn_}) ?"

    # exl_ --list "${exl_file}"
    echo | . ${sh_file}

    #======================
    #===============================================
    #===================================================================
    #!function body end--------------------------------------------

}

# f_f_ @

unset filename
