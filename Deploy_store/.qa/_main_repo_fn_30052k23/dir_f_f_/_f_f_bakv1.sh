#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_f_f_/f_f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_f_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_FN}/dir_${FNN}
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    if [ "man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: cr dir_sys for fn
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1 name_fn
            --ratis \${PATH_FN}
            --radix (c) - clang radix inside
            CNTL: [, -echo, -debug, --errmes {if_error_case}, --outmes {free_message}, ...]
            TAGS:
            EXAMP:  f_f_ est_ --ratis \${PATH_FN} [, --radix c]
            FLOW:${NORMAL}"
        return 0
    fi

    #===================================================================
    #===============================================
    #======================

    #? USE f_f_() -echo -deb

    # path_name="$1"

    # if [ $(is_root_01 "$1") -ne 1 ]; then
    #     path_name=$PPWD/$path_name
    # fi

    amount_arg $# 3 10

    unset_autoargs_f_f_() {
        echo_f_f_=0
        debug_f_f_=0
        rdx_c=0
        unset errmes_f_f_
        unset outmes_f_f_
        unset ratis_f_f_
        # any1_f_f_=0
        # unset any2_f_f_
    }

    unset_autoargs_f_f_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    if [ -n ${ratis_f_f_} ]; then
        rts_fn=${ratis_f_f_}
    else
        plt_exit "arg --ratis [, \${PATH_FN}] by strong exist"
    fi

    if [ -n ${radix_f_f_} ]; then
        if [ "c" == ${radix_f_f_} ]; then
            rdx_c=1
        else
            plt_exit_ "--radix arg: \"${radix_f_f_}\" mast by \"c\" or ... "
        fi
    fi

    c_up "$ORIGO_DIR/_f_f_/_sh"

    # if ! [ $# -eq 1 ]; then
    #     qq_exit " $# num arg != 1" "$filename" "$LINENO"
    # fi

    cd_h "$PATH_FN"

    qq_pause "($1) create !!! in ($PWD/dir_$1/) file ($1.sh) dir (_$1) ?" "$filename" "$LINENO"

    wrp_fifs1_ cd ${rts_fn} -d1

    mkdir_h_ifnotexsist_h "$PWD/dir_$1" "$filename" "$LINENO"

    cp_h "$ORIGO_DIR/_f_f_/_tml/f_f_" "$PWD/dir_$1/$1.sh" "$filename" "$LINENO"

    cp_h "$ORIGO_DIR/_f_f_/_tml/file.man" "$PWD/dir_$1/$1.man" "$filename" "$LINENO"
    cp_h "$ORIGO_DIR/_f_f_/_tml/file.lst" "$PWD/dir_$1/$1.lst" "$filename" "$LINENO"

    cp_h "$ORIGO_DIR/_f_f_/_tml/_00000" "$PWD/dir_$1/_$1"
    cp_h "$ORIGO_DIR/_f_f_/_tml/_tst" "$PWD/dir_$1/$1tst/"

    mv "$PATH_FN/dir_$1/_$1/_config/mane_.tag" "$PATH_FN/dir_$1/_$1/_config/mane_$1.tag"

    # rdx_c=1
    if [ 1 -eq ${rdx_c} ]; then
        wrp_fifs1_ cd "${ORIGO_DIR}/dir_$1/_radix" -d1
        cr_pj_c_simp_ "$1"
    fi

    # ctrl_args
    ctrl_args_inserter=${ORIGO_DIR}/_f_f_/_insert_files/ctrl_args.inserter
    ctrl_args_reciver={ctrl_args_reciver}

    # init_body
    init_body_inserter=${ORIGO_DIR}/_f_f_/_insert_files/init_body.inserter
    init_body_reciver={init_body_reciver}

    # def_const
    def_const_inserter=${ORIGO_DIR}/_f_f_/_insert_files/def_const.inserter
    def_const_reciver={init_body_reciver}

    src_fn_file=${PWD}/dir_$1/$1.sh

    cr_f_ $src_fn_file --fi0 ${ctrl_args_inserter} --fr0 {ctrl_args_reciver}
    cr_f_ $src_fn_file --fi1 ${init_body_inserter} --fr1 {init_body_reciver}
    cr_f_ $src_fn_file --fi2 ${def_const_inserter} --fr2 {def_const_reciver}

    sed -i 's/00000/'$1'/g' "$PWD/dir_$1/$1.sh"
    sed -i 's/00000/'$1'/g' "$PWD/dir_$1/$1tst/exec._tst"
    sed -i 's/00000/'$1'/g' "$PWD/dir_$1/$1tst/_flow_tst.sh"

    # cd_h $PATH_FN/

    # _ques_() {
    #     echo "add_tag_nm_ "$1"(y)?"
    #     read -r yes
    #     if [ $yes = "y" ]; then
    #         add_tag_nm_ "$1"
    #         _ques_ "$1"
    #     fi
    # }

    # _ques_ "$1"

    edit_ "$PWD/dir_$1"

    unset_autoargs_f_f_

    #======================
    #===============================================
    #===================================================================
    #!function body end--------------------------------------------

}

# f_f_ @

unset filename
