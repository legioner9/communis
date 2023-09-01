#!/bin/bash

# . this.sh "111 222;;333 444"

IFS='^'
read -a glob_arr <<<"$1"

echo -e "${GREEN}\${glob_arr[0]} = ${glob_arr[0]}${NORMAL}" #print variable
echo -e "${GREEN}\${glob_arr[1]} = ${glob_arr[1]}${NORMAL}" #print variable

arr=()
res=()

arr+=("${glob_arr[0]}")
res+=("${glob_arr[1]}") 

echo -e "${GREEN}\${arr[@]} = ${arr[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${res[@]} = ${res[*]}${NORMAL}" #print variable