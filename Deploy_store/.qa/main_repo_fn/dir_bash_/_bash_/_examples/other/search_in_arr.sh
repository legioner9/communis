#!/usr/bin/env bash

array=( a b c )
array_2=( a b c )
brray=( a d e )
value_1="a"
value_2="d"


echo -e "${GREEN}\${array[@]} = ${array[*]}${NORMAL}" #print variable

[[ " ${array[*]} " =~ " ${value_1} " ]] && echo "true" || echo "false"
[[ " ${array[*]} " =~ " ${value_2} " ]] && echo "true" || echo "false"

[[ " ${array[*]} " =~ " ${brray[*]} " ]] && echo "true" || echo "false"
[[ " ${array[*]} " =~ " ${array_2[*]} " ]] && echo "true" || echo "false"


