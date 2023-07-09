##!/usr/bin/env bash
#>var
#? "#>" head "d" tail to ine_tail
# start /communis/Deploy_store/.qa/.var/is_est_/key_equal_fn.var

#>d
d="[ ${d_is_est_} -eq 1 ] && ! [ -d "$arg_path" ]"
d_message="$arg_path: $arg_path :: not dir"

#>f
f="[ ${f_is_est_} -eq 1 ] && ! [ -f "$arg_path" ]"
f_message="$arg_path: $arg_path :: not simple file"

#>e
e="[ ${e_is_est_} -eq 1 ] && ! [ -e "$arg_path" ]"
e_message="$arg_path: $arg_path :: not exist"

#>s
s="[ ${s_is_est_} -eq 1 ] && ! [ -s "$arg_path" ]"
s_message="$arg_path: $arg_path :: zero file size"

#>b
b="[ ${b_is_est_} -eq 1 ] && ! [ -b "$arg_path" ]"
b_message="$arg_path: $arg_path :: file is not block devise(floppy, sdrom...)"

#>c
c="[ ${c_is_est_} -eq 1 ] && ! [ -c "$arg_path" ]"
c_message="$arg_path: $arg_path :: file is not character devise(modem, keyboard, sound card ...)"

#>p
p="[ ${p_is_est_} -eq 1 ] && ! [ -p "$arg_path" ]"
p_message="$arg_path: $arg_path :: file is not pipe"

#>L
L="[ ${L_is_est_} -eq 1 ] && ! [ -L "$arg_path" ]"
L_message="$arg_path: $arg_path :: file is not symbolic link"

#>h
h="[ ${h_is_est_} -eq 1 ] && ! [ -h "$arg_path" ]"
h_message="$arg_path: $arg_path :: file is not symbolic link"

#>S
S="[ ${S_is_est_} -eq 1 ] && ! [ -S "$arg_path" ]"
S_message="$arg_path: $arg_path :: file is not socket"

#>t
t="[ ${t_is_est_} -eq 1 ] && ! [ -t "$arg_path" ]"
t_message="$arg_path: $arg_path :: file is not bind with terminal"

#>r
r="[ ${r_is_est_} -eq 1 ] && ! [ -r "$arg_path" ]"
r_message="$arg_path: $arg_path :: file is not readable in this process"

#>w
w="[ ${w_is_est_} -eq 1 ] && ! [ -w "$arg_path" ]"
w_message="$arg_path: $arg_path :: file is not avalable for recording in this process"

#>x
x="[ ${x_is_est_} -eq 1 ] && ! [ -x "$arg_path" ]"
x_message="$arg_path: $arg_path :: file is not avalable for execution in this process"

#>g
g="[ ${g_is_est_} -eq 1 ] && ! [ -g "$arg_path" ]"
g_message="$arg_path: $arg_path :: sgid flag for file or directory is not set"

#>u
u="[ ${u_is_est_} -eq 1 ] && ! [ -u "$arg_path" ]"
u_message="$arg_path: $arg_path :: suid flag for file is not set"

#>k
k="[ ${k_is_est_} -eq 1 ] && ! [ -k "$arg_path" ]"
k_message="$arg_path: $arg_path :: flag sticky bit not set"

#>O
O="[ ${O_is_est_} -eq 1 ] && ! [ -O "$arg_path" ]"
O_message="$arg_path: $arg_path :: you are not owner of the file"

#>G
G="[ ${G_is_est_} -eq 1 ] && ! [ -G "$arg_path" ]"
G_message="$arg_path: $arg_path :: you do not belong to some group as the file"

#>N
N="[ ${N_is_est_} -eq 1 ] && ! [ -N "$arg_path" ]"
N_message="$arg_path: $arg_path :: the file has not been modified since the last read"

# string

#>sz
z="[ ${z_is_est_} -eq 1 ] && ! [ -z "$str" ]"
z_message="$arg_path: $arg_path :: lenghth of string is not equal 0"

#>sn
n="[ ${n_is_est_} -eq 1 ] && ! [ -n "$str" ]"
n_message="$arg_path: $arg_path :: lenghth of string is equal 0"

#>seq

seq="[ ${seq_is_est_} -eq 1 ] && ! [ "$str_1" == "$str_2" ]"
seq_message="lenghth of string is equal 0"

# number

# end 