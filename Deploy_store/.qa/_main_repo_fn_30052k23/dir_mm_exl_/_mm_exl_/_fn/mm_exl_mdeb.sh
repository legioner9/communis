#!/bin/bash
#. "$HOME/.bashrc"
filename="${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn/dir_mm_exl_/_mm_exl_/_fn/mm_exl_mdeb.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

mm_exl_mdeb() {
    FNN=${FUNCNAME[0]}
    echo -e "${CYAN}--- ${FNN}}() $* ---${NORMAL}" #started functions
    garg_ ${FNN} $@ 1>/dev/null
    d_name=$(dirname ${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn/dir_mm_exl_/_mm_exl_/_fn/mm_exl_mdeb.sh)
    # echo -e "${GREEN}\$d_name = $d_name${NORMAL}" #print variable
    wrp_fifs1_ cd ${d_name} -d1
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
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("test_1_iff_est")
    res+=("exl_ --list inner_exl/test_1_iff_est.exl")
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
                ${res[0]}                
            fi 
        done
    done
    #{zzz20}
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
