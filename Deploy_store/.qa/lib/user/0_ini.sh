#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/user/0_ini.sh"

echo -e "${HLIGHT}--- start file: file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

# list: cp_s  cp_h  rm_s  rm_h  cp_rm_s  cp_rm_h  mkdir_rm_s  mkdir_rm_h  cd_s  cd_h  cd_mkdir_s cd_mkdir_h

cp_c() {
    # echo -e "${CYAN}---cp_s() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions

    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = ($1) not exist" "$3" "$4"
    fi

    if [ -f $2 ]; then
        #prevent rerecord
        qq_exit "prevent rerecord ($2) exist" "$3" "$4"
    fi

    if cp -fr "$1" "$2"; then                                   # ← see 'man test' for available unary and binary operators.
        echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
        qq_pause "cp_s fail" "$3" "$4"
    fi
}

export cp_c

cp_s() {
    # echo -e "${CYAN}---cp_s() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions

    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$3" "$4"
    fi

    if cp -fr "$1" "$2"; then                                   # ← see 'man test' for available unary and binary operators.
        echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
        qq_pause "cp_s fail" "$3" "$4"
    fi
}

export cp_s

cp_h() {
    # echo -e "${CYAN}---cp_h() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions

    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$3" "$4"
    fi

    if cp -fr "$1" "$2"; then                                   # ← see 'man test' for available unary and binary operators.
        echo -e "${BLUE}---cp -fr "$1" "$2" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cp -fr "$1" "$2" defe((---${NORMAL}" #sistem info mesage
        qq_exit "cp_h fail" "$3" "$4"
    fi
}

export cp_h

rm_s() {
    # echo -e "${CYAN}---rm_s() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if [ -d $1 ]; then
        echo -e "${BLUE}---$1 exist---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---$1 not exist---${NORMAL}" #sistem info mesage
    fi

    if rm -fr "$1"; then
        echo -e "${BLUE}---rm -fr "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---rm -fr "$1" defe((---${NORMAL}" #sistem info mesage
        qq_pause "rm -fr $2 defe((" "$2" "$3"
    fi
}

export rm_s

rm_h() {
    # echo -e "${CYAN}---rm_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if [ -d $1 ]; then
        echo -e "${BLUE}---$1 exist---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---$1 not exist---${NORMAL}" #sistem info mesage
    fi

    if rm -fr "$1"; then
        echo -e "${BLUE}---rm -fr "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---rm -fr "$1" defe((---${NORMAL}" #sistem info mesage
        qq_exit "rm -fr $2 defe((" "$2" "$3"
    fi
}

export rm_h

rm_o() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions
    if [ -e "$1" ]; then
        rm -fr "$1"
    fi
}

export rm_o

cp_rm_s() {
    # echo -e "${CYAN}---cp_rm_s() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions

    if [ -e "$2" ]; then
        # finis exist
        echo -e "${BLUE}---"finis = $2 exist and be deleted"---${NORMAL}" #sistem info mesage

        rm_h "$2" "$3" "$4"

    fi

    cp_s "$1" "$2" "$3" "$4"
}

export cp_rm_s

cp_rm_h() {
    # echo -e "${CYAN}---cp_rm_h() $.1=$1 $.2=$2 $.3=$3 $.4=$4---${NORMAL}" #started functions

    if [ -e "$2" ]; then
        # finis exist
        echo -e "${BLUE}---"finis = $2 exist and be deleted"---${NORMAL}" #sistem info mesage

        rm_h "$2" "$3" "$4"

    fi

    cp_h "$1" "$2" "$3" "$4"

}

export cp_rm_h

# mkdir_() {
#     # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

#     # echo -e "${ULINE}$(pwd)/$1 ${NORMAL}" #repit commands

#     if [ ! -d "$1" ]; then
#         mkdir "$1"
#     fi

# }

mkdir0_() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # echo -e "${ULINE}$(pwd)/$1 ${NORMAL}" #repit commands

    if [ ! -d "$1" ]; then
        mkdir "$1"
        touch "$1"/0
    fi

}

mkdir_rm_s() {

    # echo -e "${CYAN}---mkdir_rm_s() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if [ -d "$1" ]; then

        echo -e "${BLUE}---dir \$path $1 exist remove and create that---${NORMAL}"

        rm_h "$1" "$2" "$3"

    else
        echo -e "${BLUE}---dir \$path $1 not exist create that---${NORMAL}"

    fi

    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage

        qq_pause "message_for_pause" "$2" "$3"
    fi

}

export mkdir_rm_s

mkdir_rm_h() {

    # echo -e "${CYAN}---mkdir_rm_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if [ -d "$1" ]; then

        echo -e "${BLUE}---dir \$path $1 exist remove and create that---${NORMAL}"

        rm_h "$1" "$2" "$3"

    else
        echo -e "${BLUE}---dir \$path $1 not exist create that---${NORMAL}"

    fi

    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage

        qq_exit "message_for_exit" "$2" "$3"
    fi

}

export mkdir_rm_h

cd_s() {
    # echo -e "${CYAN}---cd_s() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$2" "$3"
    fi

    if cd "$1"; then                                   # ← see 'man test' for available unary and binary operators.
        echo -e "${BLUE}---cd "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cd "$1" defe((---${NORMAL}" #sistem info mesage
        qq_pause "message_for_pause" "$2" "$3"
    fi
}

export cd_s

cd_h() {
    # echo -e "${CYAN}---cd_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if ! [ -e "$1" ]; then
        # fons not exist
        qq_exit "fons = $1 not exist" "$2" "$3"
    fi

    if cd "$1"; then                                   # ← see 'man test' for available unary and binary operators.
        echo -e "${BLUE}---cd "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---cd "$1" defe((---${NORMAL}" #sistem info mesage
        qq_exit "message_for_exit" "$2" "$3"
    fi
}

export cd_h

cd_mkdir_s() {
    # echo -e "${CYAN}---cd_mkdir_s() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    mkdir_rm_h "$1" "$2" "$3"
    cd_s "$1" "$2" "$3"

}

export cd_mkdir_s

cd_mkdir_h() {
    # echo -e "${CYAN}---cd_mkdir_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    mkdir_rm_h "$1" "$2" "$3"
    cd_h "$1" "$2" "$3"

}

export cd_mkdir_s

mkdir_h() {
    # echo -e "${CYAN}---mkdir_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage

        qq_exit "message_for_exit" "$2" "$3"
    fi
}

mkdir_s() {
    # echo -e "${CYAN}---mkdir_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage

        qq_pause "message_for_exit" "$2" "$3"
    fi
}

export mkdir_h

mkdir_h_ifnotexsist_h() {
    # echo -e "${CYAN}---mkdir_h() $.1=$1 $.2=$2 $.3=$3---${NORMAL}" #started functions

    if [ -d "$1" ]; then
        qq_exit "$1 allready exist!!!"
    fi

    if mkdir "$1"; then
        echo -e "${BLUE}---mkdir "$1" succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mkdir "$1" defe((---${NORMAL}" #sistem info mesage

        qq_exit "message_for_exit" "$2" "$3"
    fi
}

if_f_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -f "$1" ]; then

        qq_pause "$1 is not file" "$2" "$3"

    fi
}

if_f_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -f "$1" ]; then

        qq_exit "$1 is not file" "$2" "$3"

    fi
}

if_not_f_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -f "$1" ]; then

        qq_pause "$1 is exist file" "$2" "$3"

    fi
}

if_not_f_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -f "$1" ]; then

        qq_exit "$1 is exist file" "$2" "$3"

    fi
}

if_d_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -d "$1" ]; then

        qq_pause "$1 is not dir" "$2" "$3"

    fi
}

if_d_h() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    if ! [ -d "$1" ]; then

        qq_exit "$1 is not dir" "$2" "$3"

    fi
}

if_not_d_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -d "$1" ]; then

        qq_pause "$1 is exist dir" "$2" "$3"

    fi
}

if_not_d_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -d "$1" ]; then

        qq_exit "$1 is exist dir" "$2" "$3"

    fi
}

if_v_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -z "$1" ]; then

        qq_pause "$1 is not variable" "$2" "$3"

    fi
}

if_v_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -z "$1" ]; then

        qq_exit "$1 is not variable" "$2" "$3"

    fi
}

if_not_v_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -n "$1" ]; then

        qq_pause "$1 is exsist variable" "$2" "$3"

    fi
}

if_not_v_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if [ -n "$1" ]; then

        qq_exit "$1 is exsist variable" "$2" "$3"

    fi
}

if_L_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -v "$1" ]; then

        qq_pause "$1 is not symlink" "$2" "$3"

    fi
}

if_L_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -v "$1" ]; then

        qq_exit "$1 is not symlink" "$2" "$3"

    fi
}

if_not_L_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -v "$1" ]; then

        qq_pause "$1 is true symlink" "$2" "$3"

    fi
}

if_not_L_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functions

    if ! [ -v "$1" ]; then

        qq_exit "$1 is true symlink" "$2" "$3"

    fi
}

mv_h() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functionsmv

    if mv "$1" "$2"; then
        echo -e "${BLUE}---mv $1 $2 succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mv $1 $2 defe((---${NORMAL}" #sistem info mesage
        qq_exit "mv $1 $2 defe((" "$3" "$4"
    fi
}

mv_s() {
    # echo -e "${CYAN}---${FUNCNAME[0]}() $*---${NORMAL}" #started functionsmv

    if mv "$1" "$2"; then
        echo -e "${BLUE}---mv $1 $2 succ))---${NORMAL}" #sistem info mesage
    else
        echo -e "${BLUE}---mv $1 $2 defe((---${NORMAL}" #sistem info mesage
        qq_pause "mv $1 $2 defe((" "$3" "$4"
    fi
}

if_c_h_run() {
    if_v_h "$1"
    if ! test_c "$1"; then
        qq_exit "command $1 not exist"
    else
        "$1" "$2"
    fi

}

test_c() {
    command -v "$1" >/dev/null 2>&1
}

unset filename

ifi_v_h() { # $1 :: variables , SINGL_ARGUMENT

    if [ -z "$1" ]; then
        echo 1
    else
        echo 0
    fi

}
