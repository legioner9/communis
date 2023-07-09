#!/usr/bin/env bash
shopt -s extglob
 
# 2. Set the variable  and print it
output=$1
echo "=${output}="
 
## 3. Trim leading whitespaces 
output="${output##*( )}"
 
## 4. Trim trailing whitespaces
output="${output%%*( )}"
 
# 5. Print final result 
echo "=${output}="
 
# 6. Turn off the extglob shell option
shopt -u extglob