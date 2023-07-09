#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_cr_f_/_cr_f_/_debug/loop_intead_var/loop_1.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

# for (( z=0; z<10; z++ ))
# do

# done

z=1
# name=arg_$z
# eval arg_$z=999
# echo $name
# echo ${!name}

# arg_2=sdcsd_$z
# eval sdcsd_$z=cdsc
# echo ${arg_2}
# echo ${!arg_2}

# ptr=ptr_$z
# eval ptr_$z=$z$z$z

# echo "\$ptr=" $ptr
# echo "\${!ptr}=" ${!ptr}
# echo "\$ptr_1=$ptr_1"

adr_1="onnon"
adr_2=234521
adr_0="fewrf erfwerf"

for ((i = 0; i < 4; i++)); do # itterate adr_...

    adr_ptr=adr_$i
    # eval adr_$i=$i$i$i
    echo "\$adr_ptr=" $adr_ptr       # name of value in loop
    echo "\${!adr_ptr}=" ${!adr_ptr} # volume of value in loop

done
# adr_1="onnon"
# for ((i = 0; i < 3; i++)); do
#     # ptr=adr_$i
#     # eval adr_$i=$i$i$i
#     echo
# done

# echo "\$adr_1=$adr_1"
# echo "\$adr_2=$adr_2"
# echo "\$adr_3=$adr_3"

cd "$idir"

unset filename
