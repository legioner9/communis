#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/cr_man_h_unix_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

cr_man_h_unix_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)

    echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

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

    echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    echo -e "${GREEN}args = $*${NORMAL}"             #print variable

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

    p2name_cr_man_h_unix_() {

        if [ "$1" == "p" ]; then echo "util"; fi
        if [ "$1" == "t" ]; then echo "type"; fi
        if [ "$1" == "s" ]; then echo "struct"; fi
        if [ "$1" == "c" ]; then echo "const"; fi
        if [ "$1" == "d" ]; then echo "param"; fi
        if [ "$1" == "m" ]; then echo "macros"; fi
    }

    arr_params=(p t s c d m)

    # arr_fills=()
    # arr_fills+=("NAME")
    # arr_fills+=("SYNOPSIS")
    # arr_fills+=("DESCRIPTION")
    # arr_fills+=("DESCRIPTION_ru")
    # arr_fills+=("RETURN")
    # arr_fills+=("ERRORS")
    # arr_fills+=("EXAMPLES")
    # arr_fills+=("NOTES")
    # arr_fills+=("BOOKS")
    # arr_fills+=("BOOKS_ru")

    arr_fills_file=${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/arr_fills.tml

    touch_fills_cr_man_h_unix_() { # $1 root dir

        for fill in $(f2e $arr_fills_file); do
            touch_ "$1"/"$fill"
        done

    }

    case $1 in

    "_0")
        echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
        magic_nm_ "$FNN"

        ;;

    "-d")
        qq_pause "DELETE mancc system in $PPWD ?"

        for param_ in ${arr_params[@]}; do

            name_enety=$(p2name_cr_man_h_unix_ $param_)

            rm -rf "$PPWD/$name_enety"s/
            rm "$PPWD"/cat_"$name_enety"s.md

        done

        # rm -rf "$PPWD"/utils/
        # rm "$PPWD"/cat_util.md

        # echo -e "${GREEN}\$$PPWD/structs/ = $PPWD/structs/${NORMAL}" #print variable

        # rm -rf "$PPWD"/structs/
        # rm "$PPWD"/cat_struct.md

        rm -rf "$PPWD"/hfiles/
        rm "$PPWD"/cat_hfiles.md

        cd "$PPWD" || qq_exit
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

        cd $PPWD || qq_exit

        qq_pause "Create manc in $PPWD ?"

        if_d_h "$PPWD"/listh/

        rm "$PPWD"/cat_hfiles.md # remove before writ ALL contane from /listh

        cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/prefix_content.tml "$PPWD"/cat_hfiles.md

        hdir=$PPWD/listh/

        fill_dir="$PPWD"/fills

        mkdir_ $fill_dir

        cr_entety_cr_man_h_unix_() {
            # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}"           #started functions
            # echo -e "${GREEN}\${arr_params[@]} = ${arr_params[*]}${NORMAL}" #print variable

            for param in ${arr_params[@]}; do
                # echo -e "${GREEN}\$param = $param${NORMAL}" #print variable

                # ::param=p
                # ::name_enety=util=${arr_params[@]}
                # ::hdir=$PPWD/listh/
                # ::lhdir=$PPWD/hfiles/
                # ::hfile=sys_msg_h.md=$(d2e $PPWD/listh/)
                # ::hname=$PPWD/hfiles/sys_msg_h.md=$PPWD/hfiles/$hfile
                # ::name_of_hfile_2=sys/mes.h
                # ::sdir=$PPWD/utils/=$PPWD/$(p2name_cr_man_h_unix_ "$param")s/
                # ::sname=msgctl=$(f2e2n "$hdir/$hfile" "$param")
                # ::sroot=$PPWD/utils/msgctl=$sdir/$sname
                # ::spath=$PPWD/utils/msgctl/msgctl.man="$sroot/$sname".man
                # ::wpath=$PPWD/utils/msgctl/msgctl._word="$sroot/$sname"._word
                # ::hfile_body=sys_msg_h=$(prs_f -n $hfile)

                name_enety=$(p2name_cr_man_h_unix_ "$param")

                # init utils.md as copy prefix_content.tml
                if [ ! -f $PPWD/cat_"$name_enety"s.md ]; then

                    cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/prefix_content.tml $PPWD/cat_"$name_enety"s.md

                fi

                # echo -e "${GREEN}\$name_enety = $name_enety${NORMAL}" #print variable

                # H_to_STRUCT_flow
                # ::sname=msgctl pars $PPWD/listh/
                for sname in $(f2e2n "$hdir/$hfile" "$param"); do

                    # echo -e "${GREEN}\$sname = $sname${NORMAL}" #print variable

                    sname_fill_dir=$fill_dir/$sname

                    mkdir_ $sname_fill_dir

                    touch_fills_cr_man_h_unix_ $sname_fill_dir

                    sdir=$PPWD/$(p2name_cr_man_h_unix_ "$param")s/

                    # if [ ! -d "$sdir" ]; then
                    #     mkdir "$sdir" # mkdir /utils/
                    # fi

                    mkdir_ "$sdir"

                    sroot=$sdir/$sname

                    # if "/structs/sname" not exist - create that
                    if [ ! -d "$sroot" ]; then
                        echo mkdir_ "$sroot"
                        mkdir_ "$sroot" # mkdir /structs/struct_name/
                    fi

                    spath="$sroot/$sname".man
                    wpath="$sroot/$sname"._word

                    # if not exist /structs/struct_name/util_name.man - CREATE
                    if [ ! -f "$spath" ]; then

                        # echo "cp ${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_$name_enety.tml $spath"
                        cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_entety.tml "$spath"
                        cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/word.tml "$wpath"

                        # hfile: sys_msg_h.md

                        # echo -e "${GREEN}\$spath = $spath${NORMAL}"           #print variable
                        # echo -e "${GREEN}\$wpath = $wpath${NORMAL}"           #print variable
                        # echo -e "${GREEN}\$hfile = $hfile${NORMAL}"           #print variable
                        # echo -e "${GREEN}\$hfile_body = $hfile_body${NORMAL}" #print variable
                        # echo -e "${GREEN}\$name_enety = $name_enety${NORMAL}" #print variable

                        for fill in $(f2e $arr_fills_file); do

                            f2f_m $fill_dir/$sname/$fill "$spath" "<<""$fill"">>"

                        done

                        # echo -e "${GREEN}\$sname = $sname${NORMAL}" #print variable
                        for cnt in $(d2e $PPWD/contents); do
                            body_cnt=$(prs_f -n $cnt)

                            if [ "$body_cnt" == "$sname" ] || [ "$body_cnt" == "$sname"_c ]; then
                                # echo -e "${GREEN}\$body_cnt = $body_cnt${NORMAL}" #print variable
                                f2f_m $PPWD/contents/$cnt $spath "<<ISU>>"
                            fi

                        done

                        sed -i 's|00000|'"$sname"'|g' "$spath"
                        sed -i 's|11111|'"$hfile"'|g' "$spath"
                        sed -i 's|22222|'"$hfile_body"'|g' "$spath"

                        # echo see: "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/nbase/MANC/contents/"$sname".cnt
                        if [ -f "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/nbase/MANC/contents/"$sname".cnt ]; then
                            sed -i 's|33333|'"$sname"'|g' "$spath"
                        fi

                        sed -i 's|44444|'"$param"'|g' "$spath"

                        sed -i 's|00000|'"$sname"'|g' "$wpath"
                        sed -i 's|11111|'"$hfile"'|g' "$wpath"

                        # if [ ! -f $PPWD/cat_"$name_enety"s.md ]; then

                        #     cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/prefix_content.tml $PPWD/cat_"$name_enety"s.md

                        # fi

                        # echo "## [$sname]($name_enety"s"/$sname/$sname.man) >>cat_$name_enety.md"
                        echo "## [$sname]($name_enety"s"/$sname/$sname.man)" >>cat_"$name_enety"s.md

                        # echo "[$sname](../$name_enety"s"/$sname/$sname.man) >>hfiles/$hfile"
                        echo "$param""[$sname](../$name_enety"s"/$sname/$sname.man)" >>hfiles/"$hfile"

                    fi

                    # echo "[$uname](../utils/$uname/$uname.man) >>hfiles/$hfile"

                done
            done

        }

        hdir=$PPWD/listh/
        lhdir=$PPWD/hfiles/

        if [ ! -d "$lhdir" ]; then
            mkdir "$lhdir" # mkdir /utils/
        fi

        # H_extract_HFILE
        for hfile in $(d2e "$hdir"); do
            # echo -e "${GREEN}\$hfile = $hfile${NORMAL}" #print variable
            echo "## [$hfile](hfiles/$hfile)" >>cat_hfiles.md

            hfile_body=$(prs_f -n $hfile)

            hfile_fill_dir=$fill_dir/$(prs_f -n $hfile)

            mkdir_ $hfile_fill_dir

            touch_fills_cr_man_h_unix_ $hfile_fill_dir

            hname="$lhdir/$hfile"

            if [ ! -f "$hname" ]; then

                # echo "cp ${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_h.tml $hname"
                cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_h.tml "$hname"
                # sed -i 's|00000|'"$sname"'|g' "$hname"
                name_of_hfile=$(sn2e $hfile "_h" 0) # sys_msg_h.md -> sys_msg

                name_of_hfile_2="$(rp_sstr $name_of_hfile _ /)".h
                # echo -e "${GREEN}\$name_of_hfile_2 = $name_of_hfile_2${NORMAL}" #print variable
                sed -i 's|00000|'"$name_of_hfile_2"'|g' "$hname"
                sed -i 's|11111|'"$hfile"'|g' "$hname"
                sed -i 's|22222|'"$hfile_body"'|g' "$hname"

                for fill in $(f2e $arr_fills_file); do

                    f2f_m $fill_dir/$hfile_body/$fill "$hname" "<<""$fill"">>"

                done

                # echo -e "${GREEN}\$hfile_body = $hfile_body${NORMAL}" #print variable

                for cnt in $(d2e $PPWD/contents); do

                    # echo -e "${GREEN}\$cnt = $cnt${NORMAL}" #print variable
                    body_cnt=$(prs_f -n $cnt)

                    if [ "$body_cnt" == "$hfile_body" ] || [ "$body_cnt" == "$hfile_body"_1 ]; then
                        # echo -e "${GREEN}\$body_cnt = $body_cnt${NORMAL}" #print variable
                        f2f_m $PPWD/contents/$cnt $hname "<<ISU>>"
                    fi

                done

            fi

            cr_entety_cr_man_h_unix_ @ # global args $hfile

            # arg1="s"

            # name_enety=$(p2name_cr_man_h_unix_ "$arg1")

            # echo -e "${GREEN}\$name_enety = $name_enety${NORMAL}" #print variable

            # # H_to_STRUCT_flow
            # for sname in $(f2e2n "$hdir/$hfile" $arg1); do

            #     echo -e "${GREEN}\$sname = $sname${NORMAL}" #print variable

            #     sroot=$sdir/$sname

            #     # if "/structs/sname" not exist - create that
            #     if [ ! -d "$sroot" ]; then
            #         echo mkdir "$sroot"
            #         mkdir "$sroot" # mkdir /structs/struct_name/
            #     fi

            #     spath="$sroot/$sname".man

            #     # if not exist /structs/struct_name/util_name.man - CREATE
            #     if [ ! -f "$spath" ]; then

            #         echo "cp ${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_$name_enety.tml $spath"
            #         cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_"$name_enety".tml "$spath"
            #         sed -i 's|00000|'"$sname"'|g' "$spath"
            #         sed -i 's|11111|'"$hfile"'|g' "$spath"

            #         echo "## [$sname](structs/$sname/$sname.man) >>cat_structs.md"
            #         echo "## [$sname](structs/$sname/$sname.man)" >>cat_"$name_enety".md

            #         echo "[$sname](../structs/$sname/$sname.man) >>hfiles/$hfile"
            #         echo "$arg1""[$sname](../structs/$sname/$sname.man)" >>hfiles/"$hfile"

            #     fi

            #     # echo "[$uname](../utils/$uname/$uname.man) >>hfiles/$hfile"

            # done

            # arg2="p"

            # name_enety=$(p2name_cr_man_h_unix_ "$arg2")

            # echo -e "${GREEN}\$name_enety = $name_enety${NORMAL}" #print variable

            # # H_to_UTILS_flow
            # for uname in $(f2e2n "$hdir/$hfile" $arg2); do
            #     echo -e "${GREEN}\$uname = $uname${NORMAL}" #print variable

            #     udir=$PPWD/$(p2name_cr_man_h_unix_ "$arg2")s/

            #     uroot=$udir/$uname

            #     # if "/utils/uname" not exist - create that
            #     if [ ! -d "$uroot" ]; then
            #         echo mkdir "$uroot"
            #         mkdir "$uroot" # mkdir /utils/util_name/
            #     fi

            #     upath="$uroot/$uname".man

            #     # if not exist /utils/util_name/util_name.man - CREATE
            #     if [ ! -f "$upath" ]; then

            #         echo "cp ${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_man.tml  $upath"
            #         cp "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_cr_man_h_unix_/_cr_man_h_unix_/_tml/doc_file/file_man.tml "$upath"
            #         sed -i 's|00000|'"$uname"'|g' "$upath"
            #         sed -i 's|11111|'"$hfile"'|g' "$upath"

            #         echo "## [$uname](utils/$uname/$uname.man) >>cat_$name_enety.md"
            #         echo "## [$uname](utils/$uname/$uname.man)" >>cat_"$name_enety".md

            #         echo "[$uname](../utils/$uname/$uname.man) >>hfiles/$hfile"
            #         echo "$arg2""[$uname](../utils/$uname/$uname.man)" >>hfiles/"$hfile"

            #     fi

            # done

        done

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

# cr_man_h_unix_ @

unset filename
