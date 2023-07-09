#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/cr_f_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_f_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: create file from template with copy to reciver from inserter files or variables
            NAME: ${FUNCNAME[0]}()
            ARGS:
            \$1 result_file
            CNTL: [, -echo, -deb ...]
            0 <= \$i <= 99
            insert into --vr\$i \$receiver [or by default receiver=v\$i\$i\$i if --vr not define] for {--vi\$i inserter }  [--v0 \$value_for_insert] for insert [ v2f_ \$value_for_insert \$result_file \$preplacer]
            insert into --fr\$i \$receiver [or by default receiver=v\$i\$i\$i if --fr not define] for {--fi\$i inserter or inserter=f\$i\$i\$i } [--f0 \$path_file_as_insert] for insert [ f2f_ \$path_file_as_insert \$result_file \$preplacer]
            pre_fors_copy path_tml_file into result_file [ --tml \$path_tml_file ] { wrp_fifs2 cp -f \$path_tml_file \$result_file -f1 -nf2}
            TAGS:
            FLOW:
            DEBUG: file://${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/cr_f_tst/_flow_tst.sh
            file://${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_using/v1/creo_fs_2.sh with args.list
            EXAMP:
            name_to_name_flow:
                cr_f_ \$DDD/_sh/go.sh --vi0 \$editor_start_command --vr0 {editor_start_command}
            default reciver --fr0:
                cr_f_ "\$dir_root/b" --vi99 "weqwe999" --vr99 "eeeee" --tml "\$dir_root/tml_b" --fi0 "\$dir_root/into_b" 
                    N.B.  fr0_cr_f_=f000 by default${NORMAL}"
        return 0
    fi

    echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
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

    *)
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        cd_h "$PPWD" 1>/dev/null

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        # amount_arg $# min_args max_args
        # USE cr_f_() -echo -deb

        echo_cr_f_=0
        deb_cr_f_=0

        unset tml_cr_f_

        for ((i = 0; i < 100; i++)); do

            vi=vi"$i"_cr_f_
            unset "$vi"

            vr=vr"$i"_cr_f_
            unset "$vr"

            fi=fi"$i"_cr_f_
            unset "$fi"

            fr=fr"$i"_cr_f_
            unset "$fr"

        done

        garg_ ${FUNCNAME[0]} $@
        # garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_cr_f_ "cntl echo_deb_ in ${FUNCNAME[0]}"
        if [ $deb_cr_f_ -eq 1 ]; then
            echo # DEBUG MODEe
        fi

        # tml_file="$1"
        res_file="$1"

        #tml

        if [ -n "$tml_cr_f_" ]; then
            wrp_fifs2_ cp $tml_cr_f_ $res_file -f1 -nf2
        fi

        #v

        for ((i = 0; i < 100; i++)); do

            vi=vi"$i"_cr_f_
            vr=vr"$i"_cr_f_

            if [ -n "${!vi}" ]; then

                if [ -z "${!vr}" ]; then # ← see 'man test' for available unary and binary operators.
                    eval vr=vr"$i"_cr_f_="v$i$i$i"
                fi

                echo_deb_ $echo_cr_f_ "--- v2f_ ${!vi} $res_file ${!vr} ---" #sistem info mesage
                #!
                # echo "v2f_ ${!vi} $res_file ${!vr}"
                v2f_ "${!vi}" "$res_file" "${!vr}"
            fi

        done

        #f

        for ((i = 0; i < 100; i++)); do

            fi=fi"$i"_cr_f_
            fr=fr"$i"_cr_f_

            if [ -n "${!fi}" ]; then

                if [ -z "${!fr}" ]; then # ← see 'man test' for available unary and binary operators.
                    eval fr"$i"_cr_f_="f$i$i$i"
                fi

                echo_deb_ $echo_cr_f_ "f2f_ ${!fi} $res_file ${!fr}"
                #!
                # echo "f2f_ ${!fi} $res_file ${!fr}"
                f2f_ "${!fi}" "$res_file" "${!fr}"
            fi
        done

        unset tml_cr_f_

        for ((i = 0; i < 100; i++)); do

            vi=vi"$i"_cr_f_
            unset "$vi"

            vr=vr"$i"_cr_f_
            unset "$vr"

            fi=fi"$i"_cr_f_
            unset "$fi"

            fr=fr"$i"_cr_f_
            unset "$fr"

        done

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# cr_f_ @

unset filename
