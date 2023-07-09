#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_cr_pj_c_simp_/cr_pj_c_simp_.sh"

echo -e "${HLIGHT}---start file: file://$filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_pj_c_simp_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
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
            MAIN: create clang project
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1 name {_cpjs} project
            \$2 mst_dir for create project
            CNTL: [, -echo, -debug ...]
            TAGS:
            DEBUG:
            $ORIGO_DIR/_cr_pj_c_simp_/_debug/v1
            FLOW:
            dir_project/_sh/go.sh exec for _go arg for c_fn
            dir_project/_sh/help.sh exec for -h arg for c_fn
            dir_project/_sh/rbl.sh exec for _rbl arg for c_fn
                rbl.sh rebild dir_fn (eg. exec dir_project/_sh/_patch/patch_1.sh) ${NORMAL}"
        return 0
    fi
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"              #print variable
    echo -e "${GREEN}file = $0${NORMAL}"                 #print variable
    echo -e "${GREEN}args = $*${NORMAL}"                 #print variable

    echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/"

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

        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++

        # # incude fn_libs------------------------------------------
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

        #         declare $cname="${_f2a_[*]}"

        #         unset _f2a_
        #         unset item
        #     fi

        # done

        # echo -e "${GREEN}\${args_arr_name[@]} = ${args_arr_name[*]}${NORMAL}" #print variable

        # #!function body start--------------------------------------------
        # echo -e "${GREEN}\${res_[@]} = ${res_[*]}${NORMAL}" #print variable
        # echo -e "${GREEN}\${arr_[@]} = ${arr_[*]}${NORMAL}" #print variable

        # IFS=', ' read -r -a arr <<<"${arr_[0]}"
        # IFS=', ' read -r -a res <<<"${res_[0]}"

        # unset item
        # echo "arr:"
        # for item in ${arr[@]}; do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # done

        # unset item
        # echo "res:"
        # for item in ${res[@]}; do
        #     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # done
        # unset item

        #EXTEND++++++++++++++++++++++
        #EXTEND++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++
        #EXTEND+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        cd_h "$PPWD"

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

        #!end choiсe_arg_from_arr>>>>>>>>>>>>>

        #!function body===================================================================
        #!function body===============================================
        #!function body======================

        # "$ORIGO_DIR/_$FNN/_sh/"
        # FNN - func name

        # PD=$(pwd)
        PD=$(p2f_ --pwd $(pwd) )
        ARG="$1"

        if_v_h "$ARG"

        qq_pause "In $PD by create c_simple_project with name "$ARG"_cpjs , continue with that params ?"

        echo_cr_pj_c_simp_=0
        debug_cr_pj_c_simp_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ ${echo_cr_pj_c_simp_} "cntl echo_deb_ mode in ${FNN}"
        if [ ${debug_cr_pj_c_simp_} -eq 1 ]; then
            echo "DEBUG MODE in ${FNN}"
        fi
        DD=$PD/$ARG
        DDD="$DD"_cpjs

        fn_name=${ARG}_cpjs
        editor_start_command=$(echo $MAINEDITOR)
        dir_project=${DDD}
        path_main_c=${DDD}/main.c

        path_go=${DDD}/_sh/go.sh
        path_help=${DDD}/_sh/help.sh
        path_rbl=${DDD}/_sh/rbl.sh
        path_man=${DDD}/_sh/man.sh
        path_tst=${DDD}/_sh/tst.sh
        path_map=${DDD}/_sh/map.sh

        path_go_file=${DDD}/_sh/_go/go_1.sh
        path_help_file=${DDD}/_sh/_help/help_1.sh
        path_rbl_file=${DDD}/_sh/_rbl/rbl_1.sh
        path_man_file=${DDD}/_sh/_man/man_1.sh
        path_tst_file=${DDD}/exec.tst
        path_map_file=${DDD}/_sh/_map/map_1.kvlist

        mkdir "$DDD"
        cp -rf $ORIGO_DIR/_$FNN/_tml/tml_dir/* "$DDD"
        echo -e "${BLUE}--- cr_cexa "$DDD" ---${NORMAL}" #sistem info mesage
        cr_cexa "$DDD"
        echo -e "${BLUE}--- cr_word "$DDD" ---${NORMAL}" #sistem info mesage
        cr_word "$DDD"

        cd "$DDD"/use
        cr_sh_ start_with_arg.sh

        cr_f_ "$DDD"/use/start_with_arg.sh --fi1 ${ORIGO_DIR}/_${FNN}/_insert_files/body.inserter --fr1 {body}

        echo -e "${ULINE}sed -i 's|00000|'"$DDD"'|g' "$DDD/exec.sh"${NORMAL}" #repit commands
        sed -i 's|00000|'"$DDD"'|g' "$DDD/exec.sh"                            # replace in place
        sed -i 's|00000|'"$DDD"'|g' "$DDD/exec._tst"                          # replace in place
        sed -i 's|00000|'"$DDD"'|g' "$DDD/build.sh"                           # replace in place
        sed -i 's|00000|'"$DDD"'|g' "$DDD/compile.sh"                         # replace in place

        #go
        ## {path_go} < {path_go_file}
        ## {path_go_file} < {editor_start_command}, {dir_project}

        #help
        ## {path_help} < {path_help_file}
        ## {path_help_file} < {fn_name}

        #rbl
        ## {path_rbl} < {path_rbl_file}

        #man
        ## {path_rbl} < {path_rbl_file}
        ## {path_rbl_file} < {fn_name}, {dir_project}

        #tst
        ## {path_rbl} < {path_rbl_file}

        #map

        echo -e "${BLUE}--- cr_f_ ${DDD}/_sh/help.sh --vi0 ${fn_name} --vr0 {fn_name} ---${NORMAL}" #sistem info mesage
        cr_f_ "${path_help}" --vi0 "${fn_name}" --vr0 "{fn_name}"
        echo -e "${BLUE}--- cr_f_ ${DDD}/_sh/go.sh --vi0 ${editor_start_command} --vr0 {editor_start_command}  --vi1 $dir_project --vr1 {dir_project} ---${NORMAL}" #sistem info mesage
        cr_f_ "${path_go}" --vi0 "${editor_start_command}" --vr0 "{editor_start_command}" --vi1 "${dir_project}" --vr1 "{dir_project}"
        echo -e "${BLUE}--- cr_f_ ${path_main_c} --vi0 ${path_help} --vr0 {path_help} --vi1 ${path_go} --vr1 {path_go} --vi2 ${path_rbl} --vr2 {path_rbl} ---${NORMAL}" #sistem info mesage
        cr_f_ "${path_main_c}" --vi0 ${path_help} --vr0 {path_help} --vi1 ${path_go} --vr1 {path_go} --vi2 ${path_rbl} --vr2 {path_rbl}
        echo -e "${BLUE}--- cr_f_ ${path_rbl} --vi0 ${path_rbl_file} --vr0 {path_rbl_file} ---${NORMAL}" #sistem info mesage
        cr_f_ "${path_rbl}" --vi0 ${path_rbl_file} --vr0 {path_rbl_file}

        if [ ${debug_cr_pj_c_simp_} -eq 1 ]; then
            qq_pause "before . "${DDD}/exec.sh"" " $filename ${FNN}" "$LINENO"
        fi
        echo -e "${RED}--- control run exec.sh ---${NORMAL}" #sistem info mesage
        . "${DDD}/exec.sh"

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        #! Recurs exit after last args ($2)
        # if [ -n "$2" ]; then
        #     echo -e "${BLUE}---$2 start! exist ---${NORMAL}" #sistem info mesage
        #     "$2"

        # fi

        #!function body end--------------------------------------------
        ;;

    esac

}

# cr_pj_c_simp_ @

unset filename
