#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/f_f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f_f_() {

    unset ratis_f_f_

    garg_ ${FUNCNAME[0]} $@ 1>/dev/null

    rts_fn=${ratis_f_f_}

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_${FNN}
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: cr dir_sys for fn
            NAME: ${FUNCNAME[0]}()
            ARGS:
            TAGS:
            EXAMP:  f_f_ est_ --ratis \${PATH_MAIN_REPO_FN_DIR}
            FLOW:${NORMAL}"
        return 0
    fi
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"              #print variable
    echo -e "${GREEN}file = $0${NORMAL}"                 #print variable
    echo -e "${GREEN}args = $@${NORMAL}"                 #print variable

    amount_arg $# 3 10

    #!! est_ ${ratis_f_f_} -n

    rts_fn=${ratis_f_f_}

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

    case $1 in

    "_0")
        echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
        magic_nm_ "$FNN"

        ;;

    # "${arr[3]}")
    #     echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
    #     ${res[3]}
    # ;;

    *)
        echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

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

        wrp_fifs1_ cd ${rts_fn} -d1
        #===================================================================
        #===============================================
        #======================

        c_up "$ORIGO_DIR/_f_f_/_sh"

        # if ! [ $# -eq 1 ]; then
        #     qq_exit " $# num arg != 1" "$filename" "$LINENO"
        # fi

        amount_arg $# 3 10

        cd_h "${PATH_MAIN_REPO_FN_DIR}"

        qq_pause "($1) create !!! in ($PWD/dir_$1/) file ($1.sh) dir (_$1) ?" "$filename" "$LINENO"

        mkdir_h_ifnotexsist_h "$PWD/dir_$1" "$filename" "$LINENO"

        cp_h "$ORIGO_DIR/_f_f_/_tml/f_f_" "$PWD/dir_$1/$1.sh" "$filename" "$LINENO"

        cp_h "$ORIGO_DIR/_f_f_/_tml/file.man" "$PWD/dir_$1/$1.man" "$filename" "$LINENO"
        cp_h "$ORIGO_DIR/_f_f_/_tml/file.lst" "$PWD/dir_$1/$1.lst" "$filename" "$LINENO"

        cp_h "$ORIGO_DIR/_f_f_/_tml/_00000" "$PWD/dir_$1/_$1"
        cp_h "$ORIGO_DIR/_f_f_/_tml/_tst" "$PWD/dir_$1/$1tst/"

        mv "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_config/mane_.tag" "${PATH_MAIN_REPO_FN_DIR}/dir_$1/_$1/_config/mane_$1.tag"

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

        # cd_h ${PATH_MAIN_REPO_FN_DIR}/

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

        #======================
        #===============================================
        #===================================================================
        #!function body end--------------------------------------------
        ;;

    esac

}

# f_f_ @

unset filename
