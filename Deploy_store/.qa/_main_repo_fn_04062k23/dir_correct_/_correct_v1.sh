#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_correct_/correct_.sh"

echo -e "${HLIGHT}--- start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

correct_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
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
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    # echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    # echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    # echo -e "${GREEN}args = $*${NORMAL}"             #print variable

    # echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

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
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        # echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}" #print variable

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

        cd_h "$PPWD" 1>/dev/null

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

        #!end choiсe_arg_from_arr>>>>>>>>>>>>F>

        #!function body===================================================================
        #!function body===============================================
        #!function body======================

        arr=()
        res=()
        arr+=("vscode instant-markdow css")
        res+=("echo /home/st/.vscode/extensions/dbankier.vscode-instant-markdown-1.4.7/node_modules/github-markdown-css/github-markdown.css")
        arr+=("vscode settings.json")
        res+=("echo /home/st/.vscode/settings.json")
        arr+=("english PHRASE")
        res+=("echo ${COMMUNIS_PATH}/Store/English_info/dictionary_phrase.man")
        arr+=(".tst PATH")
        res+=("echo ${PATH_CONFIG_DIR}/.tst")
        arr+=("collect + editall_tst_files.list")
        res+=("")
        #5
        arr+=("C plt libs (_c_/_lib)")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib")
        arr+=("_dnf_ boot menu")
        res+=("echo ${COMMUNIS_PATH}/Deploy_store/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/dnf_.sh")
        arr+=("own all cr_pj_c_simp")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_cr_pj_c_simp_/_cr_pj_c_simp_/")
        arr+=("info_c in cr_pj_c_simp")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_cr_pj_c_simp_/_cr_pj_c_simp_/_tml/tml_dir/info_c")
        arr+=(".canons/.bfnlist.md")
        res+=("echo ${PATH_CANONS_DIR}/.bfnlist.md")
        #10
        arr+=("manclang_tailpath hint_")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_hint_/_hint_/_lists/manclang_tailpath.list")
        arr+=("env.sh")
        res+=("echo ${PATH_CONFIG_DIR}/env.sh")
        arr+=("deploy_sistem functions ")
        res+=("echo ${COMMUNIS_PATH}/Deploy_store/deploy_sistem")
        arr+=(".list2 for bd_communis_")
        res+=("echo ${COMMUNIS_PATH}/Deploy_store/plt_bd/list2")
        arr+=("_tmls to sys")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/_tmls/")
        #15
        arr+=("prl.man")
        res+=("echo ${COMMUNIS_PATH}/Deploy_store/plt_bd/_exa_for_first_start/prl.man")
        arr+=(".canons/.cfnlist.md")
        res+=("echo ${PATH_CANONS_DIR}/.cfnlist.md")
        arr+=("latina/keywords.man")
        res+=("echo ${COMMUNIS_PATH}/Store/latina/keywords.man")
        arr+=("add_PATH_.lst")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_add_PATH_/add_PATH_.lst")
        arr+=("CEXEC_PROJECT_DIR")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_exec")
        #20
        arr+=("PATH_GIT")
        res+=("echo ${COMMUNIS_PATH}")
        arr+=("PATH_TST_FILE")
        res+=("echo ${PATH_CONFIG_DIR}/.tst")
        arr+=("PATH_ENV_FILE")
        res+=("echo ${PATH_CONFIG_DIR}/env.sh")
        arr+=("rbl All MAN .list")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_mancc_/mancc_.list")
        arr+=("dir example c files")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_exam_files")
        #25
        arr+=("files.dirs for mm_rbl_cat_ext")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_rbl_cat_ext_/_rbl_cat_ext_/_file_with_dirs_for_cat")
        arr+=("repo Lexicon")
        res+=("echo /home/st/ProjectRepo_2/_repo/Lexicon")
        arr+=("flumen tempus .flu dir")
        res+=("echo ${PATH_FLUMEN_TEMPUS_DIR}")
        arr+=("vim tutorial")
        res+=("echo ${COMMUNIS_PATH}/Store/vim/Vim_учебник_ALT_Linux_Wiki.pdf")
        arr+=(".tml for cr_f_")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_tml")
        #30
        arr+=("_apt_alt_ boot menu")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_apt_alt_/apt_alt_.sh")
        arr+=("fonsh fn")
        res+=("echo ${PATH_CONFIG_DIR}/fonsh_fn.man")
        arr+=("add PATH .list")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_add_PATH_/add_PATH_.lst")
        arr+=(".canons/.gitfnlist.md")
        res+=("echo ${PATH_CANONS_DIR}/.gitfnlist.md")

        arr+=("define files to mm_dogit_")
        res+=("echo ${PATH_MAIN_REPO_FN_DIR}/dir_mm_dogit_/_mm_dogit_/_fn/mm_dogit_define_files_dirs.sh")

        # arr+=("aaaaaaaaaa")
        # res+=("echo bbbbbbbbbb")
        # arr+=("aaaaaaaaaa")
        # res+=("echo bbbbbbbbbb")
        # arr+=("aaaaaaaaaa")
        # res+=("echo bbbbbbbbbb")
        # arr+=("aaaaaaaaaa")
        # res+=("echo bbbbbbbbbb")
        # arr+=("aaaaaaaaaa")
        # res+=("echo bbbbbbbbbb")
        # arr+=("aaaaaaaaaa")
        # res+=("echo bbbbbbbbbb")

        PS3="eligendi actiones: "

        select item in "${arr[@]}"; do

            dilectus=$item
            break

        done

        case $dilectus in

        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}
            correct_
            ;;

        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            correct_ @
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            correct_
            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            correct_
            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            correct_
            ;;

        "${arr[5]}")
            echo -e "${CYAN}---${arr[5]}---${NORMAL}" #started functions

            ${res[5]}
            correct_
            ;;

        \
            "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            correct_
            ;;

        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            correct_
            ;;

        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            correct_
            ;;

        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            correct_
            ;;

        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            correct_

            ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            correct_
            ;;

        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            correct_
            ;;

        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            correct_
            ;;

        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            correct_
            ;;

        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            correct_
            ;;

        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            correct_
            ;;

        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            correct_
            ;;

        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            correct_
            ;;

        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            correct_
            ;;

        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            correct_

            ;;
        "${arr[21]}")
            echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
            ${res[21]}
            correct_
            ;;

        "${arr[22]}")
            echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
            ${res[22]}
            correct_
            ;;

        "${arr[23]}")
            echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
            ${res[23]}
            correct_
            ;;

        "${arr[24]}")
            echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
            ${res[24]}
            correct_
            ;;

        "${arr[25]}")
            echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
            ${res[25]}
            correct_
            ;;

        "${arr[26]}")
            echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
            ${res[26]}
            correct_
            ;;

        "${arr[27]}")
            echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
            ${res[27]}
            correct_
            ;;

        "${arr[28]}")
            echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
            ${res[28]}
            correct_
            ;;

        "${arr[29]}")
            echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
            ${res[29]}
            correct_
            ;;

        "${arr[30]}")
            echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
            ${res[30]}
            correct_

            ;;
        "${arr[31]}")
            echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
            ${res[31]}
            correct_
            ;;

        "${arr[32]}")
            echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
            ${res[32]}
            correct_
            ;;

        "${arr[33]}")
            echo -e "${CYAN}---${res[33]}---${NORMAL}" #started functions
            ${res[33]}
            correct_
            ;;

        "${arr[34]}")
            echo -e "${CYAN}---${res[34]}---${NORMAL}" #started functions
            ${res[34]}
            correct_
            ;;

        "${arr[35]}")
            echo -e "${CYAN}---${res[35]}---${NORMAL}" #started functions
            ${res[35]}
            correct_
            ;;

        "${arr[36]}")
            echo -e "${CYAN}---${res[36]}---${NORMAL}" #started functions
            ${res[36]}
            correct_
            ;;

        "${arr[37]}")
            echo -e "${CYAN}---${res[37]}---${NORMAL}" #started functions
            ${res[37]}
            correct_
            ;;

        "${arr[38]}")
            echo -e "${CYAN}---${res[38]}---${NORMAL}" #started functions
            ${res[38]}
            correct_
            ;;

        "${arr[39]}")
            echo -e "${CYAN}---${res[39]}---${NORMAL}" #started functions
            ${res[39]}
            correct_
            ;;

        "${arr[40]}")
            echo -e "${CYAN}---${res[40]}---${NORMAL}" #started functions
            ${res[40]}
            correct_
            ;;

        "${arr[41]}")
            echo -e "${CYAN}---${res[41]}---${NORMAL}" #started functions
            ${res[41]}
            correct_
            ;;

        "${arr[42]}")
            echo -e "${CYAN}---${res[42]}---${NORMAL}" #started functions
            ${res[42]}
            correct_
            ;;

        "${arr[43]}")
            echo -e "${CYAN}---${res[43]}---${NORMAL}" #started functions
            ${res[43]}
            correct_
            ;;

        "${arr[44]}")
            echo -e "${CYAN}---${res[44]}---${NORMAL}" #started functions
            ${res[44]}
            correct_
            ;;

        "${arr[45]}")
            echo -e "${CYAN}---${res[45]}---${NORMAL}" #started functions
            ${res[45]}
            correct_
            ;;

        *)
            echo -e "BLUE---error dilectus---${NORMAL}" #sistem info mesage
            ;;
        esac

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

# correct_ @

unset filename
