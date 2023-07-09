#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_ce_/ce_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

ce_() {

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

    # if [ "-h" == "$1" ]; then
    #     echo -e "${CYAN} ${FUNCNAME[0]}() help: 
    #         MAIN: 
    #         NAME: ${FUNCNAME[0]}()
    #         ARGS:
    #         TAGS:
    #         FLOW:${NORMAL}"
    #     return 0
    # fi

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

        cd_h "$PPWD" 1>/dev/null

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        # amount_arg $# x

        idir=$(pwd)

        local param_flow=$1
        local match=$2
        local flag_search=1
        local cexec_path=${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_exec
        local dilectus

        if [ "$param_flow" == "-gb" ] || [ "$param_flow" == "-gx" ]; then

            PS3="eligendi actiones: "
            select item in $(dd2e "$cexec_path" | grep "$match"); do
                dilectus=$item
                break
            done

            if [ -n "$dilectus" ]; then
                echo -e "${GREEN}\$dilectus = $dilectus${NORMAL}" #print variable
                path_projects="$cexec_path/$dilectus"
                cd "$path_projects"
                if [ "$(. exec.tst)" ]; then
                    echo -e "${BLUE}--- true ---${NORMAL}" #sistem info mesage

                    if [ "$param_flow" == "-gx" ]; then
                        cp $path_projects/use/main.bexe ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus
                        echo -e "${ULINE}$dilectus${NORMAL}" #start files
                        ques_arg_ $dilectus
                    fi

                else
                    echo -e "${RED}--- false ---${NORMAL}"                                                      #exit 1
                    echo -e "${HLIGHT}--- rm ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus ---${NORMAL}" #start files
                    rm ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus
                    qq_exit "$dilectus FAIL"
                fi
            fi

        elif [ "-h" == "$1" ]; then
            echo -e "${BLUE}    
    MAIN: [c]lang [e_]xec user command
    NAME: ${FUNCNAME[0]}()

    ARGS: 
    ce_                         :: all tst, copy
    ce_  -h                     :: this help    
    ce_  -x <command> [arg]     :: <command> tst, copy, exec from cbin
    ce_  -b <command>           :: <command> tst
    ce_  -bc <command>          :: <command> tst, copy
    ce_  -gx <match> [arg]      :: grep <match> tst, copy, exec from cbin
    ce_  -gb <match>            :: grep <match> tst
    ce_  -add                   :: add cpjs in /_c_/_exec
    ce_  -corr                  :: edit_ 

    FLOW: tst /_c_/_exec cpjs, cp to /.qa/binc, grep exec 

${NORMAL}" #sistem info mesage

        elif [ "$param_flow" == "-b" ] || [ "$param_flow" == "-x" ] || [ "$param_flow" == "-bc" ]; then
            avb_res=$(avb01_itr "$2" "ls $cexec_path")
            if [ 1 == $avb_res ]; then
                echo -e "${BLUE}--- "$2" present in /_c_/_exec ---${NORMAL}" #sistem info mesage
                dilectus="$2"
                path_projects="$cexec_path/$dilectus"
                cd "$path_projects"
                if [ "$(. exec.tst)" ]; then
                    echo -e "${BLUE}--- true ---${NORMAL}" #sistem info mesage

                    if [ "$param_flow" == "-x" ]; then
                        cp $path_projects/use/main.bexe ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus
                        echo -e "${ULINE}$dilectus${NORMAL}" #start files
                        ques_arg_ $dilectus
                    fi

                    if [ "$param_flow" == "-bc" ]; then
                        cp $path_projects/use/main.bexe ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus

                    fi

                else
                    echo -e "${RED}--- false ---${NORMAL}"                                                      #exit 1
                    echo -e "${HLIGHT}--- rm ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus ---${NORMAL}" #start files
                    rm ${COMMUNIS_PATH}/Deploy_store/.qa/binc/$dilectus
                    qq_exit "$dilectus FAIL"
                fi

            elif [ 0 == $avb_res ]; then
                echo -e "${RED}--- "$2" NOT present in /_c_/_exec ---${NORMAL}" #exit 1
                qq_exit "$2 NOT present in /_c_/_exec"
            fi

        elif [ -z "$1" ]; then
            for item in $(dd2e $cexec_path); do
                ce_ -bc "$item"
            done
        elif [ "-add" == "$1" ]; then
            cd "$cexec_path"
            ques_arg_ "cr_pj_c_simp_"
        elif [ "-corr" == "$1" ]; then
            code "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_exec
        else
            echo -e "${RED}--- args for ce_ WRONG ---${NORMAL}" #exit 1
            ce_ -h
        fi

        cd "$idir"

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

# ce_ @

unset filename
