#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/_cr_f_/_using/v1/creo_fs_1.sh"

echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

idir=$(pwd)
rdir="$(prs_f -d $filename)"
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

garg_ $(prs_f -n $filename) $@ 1>/dev/null

wrp_fifs1_ rm "$rdir"/res -cf1

arr=($(f2e "$rdir"/args.list))

echo -e "${GREEN}\${arr[@]} = ${arr[*]}${NORMAL}" #print variable

# cr_f_ "$rdir"/res --tml "$rdir"/f.tml --vi0 "$filename" --vr0 "{vph0}" --fi0 "$rdir"/val.ins --fr0 "{fph0}"
args=()

for item in $(f2e "$rdir"/args.list); do

    # eval res=item
  args+=( $(eval echo "$item") )

done

echo -e "${GREEN}\${args[@]} = ${args[*]}${NORMAL}" #print variable

cr_f_ ${args[*]}

echo -e "${RED}--- res start ---${NORMAL}" #exit 1

cat "$rdir"/res

echo -e "${RED}
--- res end ---${NORMAL}" #exit 1

cd "$idir"

unset filename
