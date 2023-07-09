#!/bin/bash
#. "$HOME/.bashrc"
filename="${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn/dir_cr_tst_sys_/_cr_tst_sys_/_fn/cr_tst_sys_mdeb.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

cr_tst_sys_mdeb() {
    FNN=${FUNCNAME[0]}
    echo -e "${CYAN}--- ${FNN}}() $* ---${NORMAL}" #started functions
    garg_ ${FNN} $@ 1>/dev/null
    d_name=$(dirname ${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn/dir_cr_tst_sys_/_cr_tst_sys_/_fn/cr_tst_sys_mdeb.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
ARGS: 
FLOW:
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}
    if [ "_man" == "$1" ]; then
        edit_ "${d_name}/${FNN}".man
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${d_name}/${FNN}".sh
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${d_name}/${FNN}".lst
        return 0
    fi
    if [ "_test" == "$1" ]; then
        ${FNN}test
        return 0
    fi
    #{default_cntl_fn}
    # amount_arg $# 1 1
    echo -e "${BLUE}--- exec ${FNN} (num_menu) ---${NORMAL}" #started functions

    cr_tst_sys_mdeb_set1() {

        rr_
        local tmp=${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_tst_sys_/_cr_tst_sys_/_tmp
        wrp_fifs1_ cd ${tmp} -d1
        wrp_fifs1_ rm -rf v1 -cd1
        wrp_fifs1_ mkdir v1 -cnd1
        wrp_fifs1_ cd v1

        cr_tst_sys_

        edit_ ${tmp}/v1

    }

    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("create in _tmp cr_tst_sys_")
    res+=("cr_tst_sys_mdeb_set1")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    if [ $(num_01 $1) -eq 1 ] && [ $1 -le ${#arr[@]} ]; then
        num_res=$(($1 - 1))
        ${res[${num_res}]}
        return 0
    fi
    PS3="eligendi actiones: "
    select item in "${arr[@]}"; do
        for ((i = 0; i < 1000; i++)); do
            if [[ ${item} == ${arr[$i]} ]]; then
                ${res[$i]}
                ${FNN} $@
            fi
            if [[ ${item} == ${arr[0]} ]]; then
                ${res[$i]}
            fi
        done
    done
    #{zzz20}
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
