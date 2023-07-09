#!/bin/bash
#. "/home/st/.bashrc"
filename="${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_fn/f_f_mdeb.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

f_f_mdeb() {
    FNN=${FUNCNAME[0]}
    echo -e "${CYAN}--- ${FNN}}() $* ---${NORMAL}" #started functions
    garg_ ${FNN} $@ 1>/dev/null
    d_name=$(dirname ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_fn/f_f_mdeb.sh)
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

    f_f_mdeb_set1() {
        rr_
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start.sh
        rr_
        fff_ _mdeb
    }

    f_f_mdeb_set2() {
        rr_
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start.sh
        rr_
        fff_ fdv -vzz -_vfd --sdfv --_vsdf svdf4 -verbose
        fff_ fdv -vzz -_vfd --sdfv --_vsdf svdf4
        fff_ fdv -vzz -_vfd --sdfv --_vsdf -verbose

    }

    f_f_mdeb_set3() {
        rr_
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start_2.sh
        rr_

        fff2_ _mdeb
    }

    f_f_mdeb_set4() {
        rr_
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start_2.sh
        rr_
        fff_ fdv -vzz -_vfd --sdfv --_vsdf svdf4 -verbose
        fff_ fdv -vzz -_vfd --sdfv --_vsdf svdf4
        fff_ fdv -vzz -_vfd --sdfv --_vsdf -verbose

    }

    f_f_mdeb_set5() {
        rr_
        . ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_debug/v1/start_2.sh
        rr_

        meld ${PATH_MAIN_REPO_FN_DIR}/_dir_fff2_like_fff_/_fff2_ ${PATH_MAIN_REPO_FN_DIR}/dir_fff2_/_fff2_&

    }

    f_f_mdeb_set6() {

        meld ${PATH_MAIN_REPO_FN_DIR}/_dir_fff2_like_fff_/_fff2_ ${PATH_MAIN_REPO_FN_DIR}/dir_fff2_/_fff2_&
        # meld ${PATH_MAIN_REPO_FN_DIR}/dir_fff_/_fff_ ${PATH_MAIN_REPO_FN_DIR}/dir_fff2_/_fff2_&
        # meld ${PATH_MAIN_REPO_FN_DIR}/dir_fff_/fff_extst ${PATH_MAIN_REPO_FN_DIR}/dir_fff2_/fff2_extst&
        # meld ${PATH_MAIN_REPO_FN_DIR}/dir_fff_/fff_tst ${PATH_MAIN_REPO_FN_DIR}/dir_fff2_/fff2_tst&
    }

    local arr=()
    local res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("create fff_")
    res+=("f_f_mdeb_set1")
    arr+=("create + deb fff_ with any param f_f_mdeb_set2()")
    res+=("f_f_mdeb_set2")
    arr+=("p2: create fff2_ + _mdeb")
    res+=("f_f_mdeb_set3")
    arr+=("p2: create + deb fff_ with any param f_f_mdeb_set2()")
    res+=("f_f_mdeb_set4")
    arr+=("p2: create fff2_ + meld (fff2_ etalon) (fff2_)")
    res+=("f_f_mdeb_set5")
    arr+=("meld (fff2_ etalon) (fff2_)")
    res+=("f_f_mdeb_set6")

    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
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
