#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PATH_COMMUNIS}/Deploy_store/.qa/lib/user/sort_tags_s.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

sort_tags_s() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PATH_COMMUNIS}/Deploy_store/.qa/lib/user/sort_tags_s.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
$1
[ ,$2 num_menu ]
CNTLS:
required
optional 
CNTL inspect : -h, _man, _go, _list
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: (process | subprocess (no read pause only plt_err return $errno) | interpritator)
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
WARN: 
DEBUG:
EXAMP:
${FNN} -<>
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
    if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    g_args=($(garg2e_ "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(garg2e_ "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done
    local arg_1_23452="$1"
    if ! [ -f "${arg_1_23452}" ]; then
        plt_info "in sort_file_s() : NOT_FILE : ${arg_1_23452} return 1"
        return 1
    fi

    sort "${arg_1_23452}" -o "${arg_1_23452}"~
    cp "${arg_1_23452}"~ "${arg_1_23452}"
    rm -f "${arg_1_23452}"~
    sed -i '/^[[:space:]]*$/d' "${arg_1_23452}"

}

cd "${idir}"
unset filename
#{post_fn}
