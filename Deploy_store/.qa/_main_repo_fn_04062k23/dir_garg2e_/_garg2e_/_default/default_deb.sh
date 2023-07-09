#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_garg2e_/_garg2e_/_default/default_deb.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

# idir=$(pwd)
# rdir="$(prs_f -d $filename)"
# gname="$(prs_f -n $filename)" # name without .ext
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# export _edeb=echo_$gname
# export echo_$gname=0

# export _debug=debug_$gname
# export debug_$gname=0

# garg2e_ $gname $@ 1>/dev/null

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
garg2e_ $gname $@ 1>/dev/null
#
echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
echo "DEBUG MODE in $gname"
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
rr_

echo  "garg2e_ -a -b --af aff --bf bff"  #sistem info mesage
echo  | garg2e_ -a -b --af aff --bf bff 

# echo  " garg2e_ aa -rr -?werr --csa yeyt "  #sistem info mesage
# echo  | garg2e_ aa -rr -?werr --csa yeyt 

# echo  " garg2e_ aa -rr -?werr dfrer --csa yeyt "  #sistem info mesag
# echo  | garg2e_ aa -rr -?werr dfrer --csa yeyt 

# echo  " garg2e_ aa -?werr --cs "  #sistem info mesag
# echo  | garg2e_ aa -?werr --cs 

# echo  " garg2e_ aa -?werr rtger "  #sistem info mesag
# echo  | garg2e_ aa -?werr rtgert 

# echo  " garg2e_ aa -?werr "  #sistem info mesag
# echo  | garg2e_ aa -?werr 

echo  "garg2e_ -rr --csa "  #sistem info mesag
echo  | garg2e_ -rr --csa 

echo  "garg2e_ -rr --csa --ergre"  #sistem info mesag
echo  | garg2e_ -rr --csa --ergre 

# echo  " garg2e_ aa -rr -?werr --csa yeyt "  #sistem info mesag
# echo  | garg2e_ aa -rr -?werr --csa yeyt 

# echo  " garg2e_ -rr --csa yeyt -?werr " #sistem info mesag
# echo  | garg2e_ aa -rr --csa yeyt -?werr

# echo  " garg2e_ aa -rr --csa yeyt -?werr hyetrty " #sistem info mesag
# echo  | garg2e_ aa -rr --csa yeyt -?werr hyetrty 
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
