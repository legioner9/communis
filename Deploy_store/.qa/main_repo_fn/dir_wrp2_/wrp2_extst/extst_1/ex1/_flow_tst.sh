#!/bin/bash

#. "$HOME/.bashrc"

filename=${PATH_MAIN_REPO_FN_DIR}/dir_wrp2_/wrp2_extst/extst_1/ex1/_flow_tst.sh

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

#?- nenci file --_(x|c)(x|n)d (/tmp|/tmpx) --_(x|c)(x|n)d (^/etc|/^etcx)

xc=(x c)
xn=(x n)
atmp=(/tmp /tmpx)
aetc=(^/etc ^/etcx)

for i1 in "${xc[@]}"; do
    for i2 in "${xn[@]}"; do
        for i3 in "${atmp[@]}"; do
            for i4 in "${xc[@]}"; do
                for i5 in "${xn[@]}"; do
                    for i6 in "${aetc[@]}"; do

                        # echo "--_${i1}${i2}d ${i3} --_${i4}${i5}d ${i6}" &>>res

                        ret2e wrp2_ file --_${i1}${i2}d ${i3} --_${i4}${i5}d ${i6} &>>res
                        echo | wrp2_ file --_${i1}${i2}d ${i3} --_${i4}${i5}d ${i6} &>>res

                    done
                done
            done
        done
    done
done

#? --_xxx /tmp

# ret2e wrp2_ file --_xxd /tmp --_xxd ^/bin &>>res
# echo | wrp2_ file --_xxd /tmp --_xxd ^/bin &>>res

cd "$idir"

unset filename
