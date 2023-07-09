#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_mm_start_/_mm_start_/_fn/fn_install_andr_studio_mm_start_.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

# idir=$(pwd)
# rdir="$(prs_f -d $filename)"
# gname="$(prs_f -n $filename)" # name without .ext
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# export _edeb=echo_$gname
# export echo_$gname=0

# export _debug=debug_$gname
# export debug_$gname=0

# garg_ $gname $@ 1>/dev/null

# echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
# if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
#     echo "DEBUG MODE in $gname"
# fi

idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
#
export _edeb=echo_$gname
export echo_$gname=0
#
export _debug=debug_$gname
export debug_$gname=0
#
garg_ $gname $@ 1>/dev/null
#
echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
    echo "DEBUG MODE in $gname"
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
fn_install_andr_studio_mm_start_() {

    # if ! [ -f /home/st/soft/android-studio-2021.3.1.17-linux.tar.gz ] && ! [ -f /home/st/soft/android-studio/bin/studio.sh ]; then
    #     wrp_fifs2_ cp -rf /run/media/st/TOSHIBA_EXT/soft/tar_gz/android-studio-2021.3.1.17-linux.tar.gz /home/st/soft/android-studio-2021.3.1.17-linux.tar.gz -f1 -cnf2
    # fi

    cp_issue_to_home_mm_start_

    wrp_fifs1_ cd /home/st/soft/ -d1

    if ! [ -f /home/st/soft/android-studio/bin/studio.sh ]; then

        wrp_fifs1_ tar -xpvzf /home/st/soft/android-studio-2021.3.1.17-linux.tar.gz -f1

        qq_pause "add path \"/home/st/soft/android-studio/bin\""
        edit_ "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_add_PATH_/add_PATH_.lst
        qq_pause "tech pause"
        add_PATH_

    fi

    

    if [ -f /home/st/soft/android-studio/bin/studio.sh ]; then

        wrp_fifs1_ mkdir /home/st/.config/Google -cnd1
        wrp_fifs1_ mkdir /home/st/.config/Google/AndroidStudio2021.3 -cnd1
        wrp_fifs1_ touch /home/st/.config/Google/AndroidStudio2021.3/idea.properties -cnf1
        echo -e "${BLUE}--- START: /home/st/soft/android-studio/bin/studio.sh ---${NORMAL}" #sistem info mesage
        /home/st/soft/android-studio/bin/studio.sh

    elif ! [ -f /home/st/soft/android-studio/bin/studio.sh ]; then

        qq_exit " fn_install_andr_studio_mm_start_ : not exist /home/st/soft/android-studio/bin/studio.sh "

    fi

}
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
