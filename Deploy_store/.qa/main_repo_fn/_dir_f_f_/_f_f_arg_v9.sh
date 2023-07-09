#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_arg_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_f_arg_() {

    unset ratis_f_f_
    unset dir_fns_
    unset name_fn_

    local ARGS=($@)

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_f_f_
    local PPWD=$PWD
    local FLN=$0

    local FNLOCK="fn: ${FNN}, with_args: $*, filename: ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/${FNN}.sh, line: $LINENO"

    c_up "$ORIGO_DIR"/_f_f_/_fn/ 1>/dev/null

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_f_f_/f_f_.man
        return 0
    fi

    if [ "test" == "$1" ]; then
        f_f_test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_f_f_/f_f_.lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_f_f_/
        return 0
    fi

    if [ "_deb" == "$1" ]; then
        # echo "$FNN default debag not define"
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start_arg.sh
        return 0
    fi

    if [ "_tst" == "$1" ]; then
        # echo "$FNN default debag not define"
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_extst/dir_1/start_check_extst.tst
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
            MAIN: cr dir_sys for fn
                    f_f_p2 behavior clone (mean: fff_===fff2_) with data f_f_ , but refactoring body 
                    use: f_f_p2 _mdeb
            NAME: ${FUNCNAME[0]}()
            ARGS:
            TAGS:
            DEBUG: 
                f_f_arg_ _deb
                f_f_arg_ _tst
                f_f_arg_ _diff (after f_f_arg_ _diff)
            EXAMP: 
                echo | f_f_arg_ --_name_fn <name> --_dir_fns <dir_fns> 

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

    # rts_fn=${ratis_f_f_}

    arr=()
    res=()
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")

    echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

    # incude fn_libs------------------------------------------
    # c_up "$ORIGO_DIR/_$FNN/_sh"

    # # UP in_file_variables------------------------------------
    # path_dir_in=$ORIGO_DIR/_$FNN/_in

    # cd_h $path_dir_in

    # unset _f2a_
    # unset item
    # args_arr_name=()
    # for item in *; do
    #     ext=${item##*.}
    #     name=${item%.*}
    #     cname=${name:1}
    #     # echo -e "${GREEN}\$ext = $ext${NORMAL}" #print variable
    #     # echo -e "${GREEN}\$cname = $cname${NORMAL}" #print variable
    #     if [ $ext = "var" ]; then
    #         args_arr_name+=($cname)
    #         # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
    #         # echo -e "${ULINE}f2a $path_dir_in/$item${NORMAL}" #repit commands
    #         f2a $path_dir_in/$item
    #         # echo -e "${GREEN}\${_f2a_[@]} = ${_f2a_[*]}${NORMAL}" #print variable

    #         declare $cname=${_f2a_[@]}

    #         unset _f2a_
    #         unset item
    #     fi

    # done

    # echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

    # #!function body start--------------------------------------------
    # echo -e "${GREEN}\${var[@]} = ${var[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${tml[@]} = ${tml[*]}${NORMAL}" #print variable

    #!choiсe_arg_from_arr>>>>>>>>>>>>>>>>>

    # PS3="eligendi actiones (var): "
    # select item in "${var[@]}";do
    #     var_=$item
    #     break
    # done

    # PS3="eligendi actiones (tml): "
    # select item in "${tml[@]}";do
    #     tml_=$item
    #     break
    # done

    # cd_h "$PPWD"

    #!end choiсe_arg_from_arr>>>>>>>>>>>>>

    #! mast be: wrp_fifs1_ cd ${rts_fn} -d1
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
    #! hardcord ${"${PATH_MAIN_REPO_FN_DIR}"}
    # cd_h "${PATH_MAIN_REPO_FN_DIR}"
    wrp2_ cd --_xxd ${dir_fns_}

    plt_pause "(${name_fn_}) create !!! in ($PWD/dir_${name_fn_}/) file (${name_fn_}.sh) dir (_${name_fn_}) ?"

    #? cp tml to fs
    wrp2_ mkdir --_cnd "${PWD}/dir_${name_fn_}"
    wrp2_ cp -rf --_xxf "${ORIGO_DIR}/_f_f_/_tml/f_f_" --_xnf "${PWD}/dir_${name_fn_}/${name_fn_}.sh"
    wrp2_ cp -rf --_xxf "$ORIGO_DIR/_f_f_/_tml/file.man" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.man"
    wrp2_ cp -rf --_xxf "$ORIGO_DIR/_f_f_/_tml/file.lst" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.lst"
    wrp2_ cp -rf --_xxd "$ORIGO_DIR/_f_f_/_tml/_00000" --_xnd "$PWD/dir_${name_fn_}/_${name_fn_}"
    #? ------------------------------------------------------------

    #? insert to main ${name_fn_}.sh
    src_fn_file=${PWD}/dir_${name_fn_}/${name_fn_}.sh

    is_est_ ${src_fn_file} -f

    # ctrl_args
    ctrl_args_inserter=${ORIGO_DIR}/_f_f_/_insert_files/ctrl_args.inserter
    cr_f_ ${src_fn_file} --fi0 ${ctrl_args_inserter} --fr0 {ctrl_args_reciver}

    # init_body
    init_body_inserter=${ORIGO_DIR}/_f_f_/_insert_files/init_body.inserter
    cr_f_ ${src_fn_file} --fi1 ${init_body_inserter} --fr1 {init_body_reciver}

    # def_const
    def_const_inserter=${ORIGO_DIR}/_f_f_/_insert_files/def_const.inserter
    cr_f_ ${src_fn_file} --fi2 ${def_const_inserter} --fr2 {def_const_reciver}

    # cntl_default
    cntl_default=${ORIGO_DIR}/_f_f_/_insert_files/cntl_default.inserter
    cr_f_ ${src_fn_file} --fi0 ${cntl_default} --fr0 {cntl_default}

    # cntl_help
    cntl_help=${ORIGO_DIR}/_f_f_/_insert_files/cntl_help.inserter
    cr_f_ ${src_fn_file} --fi2 ${cntl_help} --fr2 {cntl_help}

    # garg
    garg=${ORIGO_DIR}/_f_f_/_insert_files/garg.inserter
    cr_f_ ${src_fn_file} --fi0 ${garg} --fr0 {garg}

    # ptr_if
    ptr_if=${ORIGO_DIR}/_f_f_/_insert_files/ptr_if.inserter
    cr_f_ ${src_fn_file} --fi0 ${ptr_if} --fr0 {ptr_if}

    # see_cntl
    see_cntl=${ORIGO_DIR}/_f_f_/_insert_files/see_cntl.inserter
    cr_f_ ${src_fn_file} --fi0 ${see_cntl} --fr0 {see_cntl}

    # def_exit
    def_exit=${ORIGO_DIR}/_f_f_/_insert_files/def_exit.inserter
    cr_f_ ${src_fn_file} --fi0 ${def_exit} --fr0 {def_exit}

    # hints
    hints=${ORIGO_DIR}/_f_f_/_insert_files/hints.inserter
    cr_f_ ${src_fn_file} --fi0 ${hints} --fr0 {hints}

    # name_fn_
    cr_f_ ${src_fn_file} --vi0 ${name_fn_} --vr0 {name_fn_}

    # dir_fns_
    cr_f_ ${src_fn_file} --vi0 ${dir_fns_} --vr0 {dir_fns_}
    upg_path_ ${src_fn_file}
    #? ------------------------------------------------------------

    #* work in _debug >>>>>>>>>>
    wrp2_ cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/v1
    cr_sh_ deb_1.sh
    wrp2_ cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst
    cr_sh_ self_tst_1.sh
    wrp2_ cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug
    cr_sh_ mdeb.sh

    #? _fn/${name_fn_}_mdeb.sh
    file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_fn/${name_fn_}mdeb.sh
    body_fn=${ORIGO_DIR}/_f_f_/_insert_files/body_fn_mdeb.inserter

    # est_ ${file_path} -f

    cr_shfn_ ${file_path}

    cr_f_ ${file_path} --fi0 ${body_fn} --fr0 {body_fn}

    obs_quis_ ${file_path}

    arr_res=${PATH_INSERT_DIR}/f_f_/_fn_fff_mdeb_set_1_sh/arr_res.insert

    cr_f_ ${file_path} --fi0 ${arr_res} --fr0 {arr_res}

    #? _fn/${name_fn_}_mdeb_set_1.sh
    file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_fn/${name_fn_}mdeb_set_1.sh

    cr_shfn_ ${file_path}

    body_fn=${PATH_INSERT_DIR}/f_f_/_fn_fff_mdeb_sh/body_fn.insert

    est_ ${file_path} -f
    est_ ${body_fn} -f

    cr_f_ ${file_path} --fi0 ${body_fn} --fr0 {body_fn}

    #? _debug/self_tst/self_tst_1.sh
    file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst/self_tst_1.sh
    body=${ORIGO_DIR}/_f_f_/_insert_files/body_self_tst_1.inserter

    est_ ${file_path} -f
    est_ ${body} -f

    cr_f_ ${file_path} --fi0 ${body} --fr0 {body}

    edit_ "${dir_fns_}/dir_${name_fn_}"

    . ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst/self_tst_1.sh
    #* work in _debug <<<<<<<<<<

    #* work in extst >>>>>>>>>>
    wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_}/ -d1
    wrp_fifs1_ mkdir ${name_fn_}extst -cnd1
    wrp_fifs1_ cd ${name_fn_}extst -d1

    #? cr_tst_sys_
    cr_tst_sys_ --name_dir extst_1 --ext extst

    #! be created cr_tst_dir_ --name "${name_fn_}"tst --ext tst (wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_}/)
    # wrp_fifs1_ mkdir ${dir_fns_}/dir_${name_fn_}/${name_fn_}tst -cnd1
    # wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_}/${name_fn_}tst -d1
    wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_} -d1
    cr_tst_dir_ --name_dir "${name_fn_}"tst --ext tst

    #* work in extst <<<<<<<<<<

    #* work in _default >>>>>>>>>>
    wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_default -d1
    cr_sh_ default_deb.sh

    file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_default/default_deb.sh
    body=${ORIGO_DIR}/_f_f_/_insert_files/body_default_deb.inserter

    est_ ${file_path} -f
    est_ ${body} -f

    cr_f_ ${file_path} --fi0 ${body} --fr0 {body}

    #* work in _default >>>>>>>>>>

    # cd_h ${PATH_MAIN_REPO_FN_DIR}/

    # _ques_() {
    #     echo "add_tag_nm_ "${name_fn_}"(y)?"
    #     read -r yes
    #     if [ $yes = "y" ]; then
    #         add_tag_nm_ "${name_fn_}"
    #         _ques_ "${name_fn_}"
    #     fi
    # }

    # _ques_ "${name_fn_}"

    #======================
    #===============================================
    #===================================================================
    #!function body end--------------------------------------------

}

# f_f_ @

unset filename
