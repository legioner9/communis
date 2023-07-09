#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow/_mm_1_conq/Hardware_Info_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

Hardware_Info_(){
    echo -e "${CYAN}---Hardware_Info_() $*---${NORMAL}" #started functions
    
    # path_man_1=$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_1_conq_/_Hardware_Info_
    
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("man_is $PWD")
    res+=("man_is $PWD")
    arr+=("cat /proc/cpuinfo - see CPU info")
    res+=("cat /proc/cpuinfo")
    arr+=("free -h - Display free and used memory")
    res+=("free -h")
    arr+=("sudo lshw -short - List hardware configuration information")
    res+=("sudo lshw -short")
    #5
    arr+=("sudo lshw-gui - List hardware configuration information")
    res+=("sudo lshw-gui")
    arr+=("lsblk - See information about block devices")
    res+=("lsblk")
    arr+=("lspci -tv - Show PCI devices in a tree-like diagram")
    res+=("lspci -tv")
    arr+=("lsusb -tv - Display USB devices in a tree-like diagram")
    res+=("lsusb -tv")
    arr+=("sudo dmidecode - Display USB devices in a tree-like diagram")
    res+=("sudo dmidecode")
    #10
    arr+=("lspci -tv - Show PCI devices in a tree-like diagram")
    res+=("lspci -tv")
    arr+=("sudo hdparm -I /dev/[arg] | less - [?sda] отобразить подробную информацию о жестком диске")
    res+=("sudo hdparm -I /dev/")
    arr+=("lscpu - reports information about the cpu and processing units")
    res+=("lscpu")
    arr+=("hwinfo --short - information about multiple different hardware components")
    res+=("hwinfo --short")
    arr+=("lsscsi - Lists out the scsi/sata devices like hard drives and optical drives")
    res+=("lsscsi")
    arr+=("inxi -Fx - beautiful looking report")
    res+=("inxi -Fx")
    arr+=("df -h -x tmpfs- данные в более читаемом формате without tmpfs")
    res+=("df -h -x tmpfs")
    arr+=("dmesg - show bootup message")
    res+=("dmesg")
    # arr+=("inxi -Fx - Lists out the scsi/sata devices like hard drives and optical drives")
    # res+=("inxi -Fx")
    
    # arr+=("22222 arg - send echo_request to network hosts")
    # res+=("22222 $arg")
    # arr+=("dnf --enablerepo=ARG1 install ARG2 - dnf позволяет установить любой конкретный пакет (скажем, phpmyadmin) из определённого репозитория (к примеру, epel) ")
    # res+=("---")
    
    # echo -e "${BLUE}---enter ARG1---${NORMAL}" #sistem info mesage
    # read -r ARG1
    # echo -e "${BLUE}---enter ARG2---${NORMAL}" #sistem info mesage
    # read -r ARG2
    # echo -e "${BLUE}---dnf --enablerepo=ARG1 install ARG2---${NORMAL}" #sistem info mesage
    # dnf --enablerepo="$ARG1" install "$\ARG2"
    
    # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
    # read -r arg
    # echo -e "${BLUE}---${res[33333]} $arg---${NORMAL}" #sistem info mesage
    # ${res[33333]} "$arg"
    
    # arg=$(choice_44444)
    # echo -e "${BLUE}---${res[33333]} $arg---${NORMAL}" #sistem info mesage
    # ${res[33333]} "$arg"
    
    PS3="eligendi actiones: "
    
    select item in "${arr[@]}";do
        
        dilectus=$item
        break
        
    done
    
    case $dilectus in
        
        "${arr[0]}")
            echo -e "${CYAN}---${res[0]}---${NORMAL}" #started functions
            ${res[0]}
            
        ;;
        "${arr[1]}")
            echo -e "${CYAN}---${res[1]}---${NORMAL}" #started functions
            ${res[1]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}&
            Hardware_Info_ "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            Hardware_Info_ "$@"
            
        ;;
        "${arr[11]}")
            echo -e "${BLUE}---enter arg[sdb]---${NORMAL}" #sistem info mesage
            read -r arg
            echo -e "${BLUE}---${res[11]}$arg---${NORMAL}" #sistem info mesage
            ${res[11]}$arg
            Hardware_Info_ "$@"
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            Hardware_Info_ "$@"
        ;;
        
        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            Hardware_Info_ "$@"
            
        ;;
        
        
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}

export Hardware_Info_

unset filename