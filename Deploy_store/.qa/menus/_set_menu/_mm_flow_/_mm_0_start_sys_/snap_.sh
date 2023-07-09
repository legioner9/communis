#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow/_mm_0_start_sys/dnf_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

# dnf_

snap_(){
    echo -e "${CYAN}---dnf_() $*---${NORMAL}" #started functions

    c_up "$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_snap_"
    
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("sudo dnf install snapd & ln -s - Snap can be installed on Fedora")
    res+=("sudo dnf install snapd")
    arr+=("snap_install_ choice arg - snap package management")
    res+=("snap_install_")
    arr+=("snap_install_ enter arg - snap package management")
    res+=("snap_install_")
    arr+=("sudo snap remove choice arg - snap package management")
    res+=("sudo snap remove")
    #5
    arr+=("sudo snap remove enter arg - snap package management")
    res+=("sudo snap remove")
    arr+=("#sudo snap update - snap package all update")
    res+=("#sudo snap update")
    arr+=("snap refresh - snap package all update")
    res+=("snap refresh")
    arr+=("snap list - snap package list")
    res+=("snap list")
    arr+=("snap info choice arg - snap info pckage")
    res+=("snap info")
    #10
    arr+=("snap info enter arg - snap info pckage")
    res+=("snap info")
    arr+=("snap find choice arg - snap find pckage")
    res+=("snap find")
    arr+=("snap find enter arg - snap discribe find pckage")
    res+=("snap find")
    arr+=("snap disable choice arg - snap temporarily disable pckage")
    res+=("snap disable")
    arr+=("snap enable choice arg - snap enable disabled pckage")
    res+=("snap enable")
    #15
    arr+=("snap run choice arg - snap run pckage")
    res+=("snap run")
    
    # arr+=("sudo dnf autoremove - dnf удалить осиротевшие пакеты")
    # res+=("sudo dnf autoremove")
    # arr+=("sudo dnf install choice arg - dnf package management")
    # res+=("sudo dnf install")
    # arr+=("sudo dnf install enter arg - dnf package management")
    # res+=("sudo dnf install")
    # arr+=("sudo dnf remove choice arg - dnf package management")
    # res+=("sudo dnf remove")
    # #5
    # arr+=("sudo dnf remove enter arg - dnf package management")
    # res+=("sudo dnf remove")
    # arr+=("sudo dnf update - dnf package all update")
    # res+=("sudo dnf update")
    # arr+=("dnf repolist - dnf all up repo")
    # res+=("dnf repolist")
    # arr+=("dnf repolist all - dnf all up/down repo")
    # res+=("dnf repolist all")
    # arr+=("dnf list installed - dnf all up package")
    # res+=("dnf list installed")
    # #10
    # arr+=("dnf search enter arg - dnf search package")
    # res+=("dnf search")
    # arr+=("dnf info enter arg - dnf узнать информацию о пакете до его установки")
    # res+=("dnf info")
    # arr+=("dnf provides enter arg - dnf ищет имя пакета, к которому принадлежит определенный файл")
    # res+=("dnf provides")
    # arr+=("dnf clean all - dnf можем очистить все кэшированные пакеты и заголовки, содержащие информацию об удаленных пакетах")
    # res+=("dnf clean all")
    # arr+=("dnf history - dnf посмотреть список уже выполненных команд dnf")
    # res+=("dnf history")
    # #15
    # arr+=("dnf grouplist - dnf выведет список всех известных групп")
    # res+=("dnf grouplist")
    # arr+=("sudo dnf groupinstall enter arg - dnf установить группу пакетов, связанных вместе, как групповой пакет (скажем, образовательное программное обеспечение) ")
    # res+=("sudo dnf groupinstall")
    # arr+=("sudo dnf groupupdate enter arg - dnf обновим групповой пакет ")
    # res+=("sudo dnf groupupdate")
    # arr+=("dnf --enablerepo=ARG1 install ARG2 - dnf позволяет установить любой конкретный пакет (скажем, phpmyadmin) из определённого репозитория (к примеру, epel) ")
    # res+=("---")
    
    # arr+=("22222 arg - send echo_request to network hosts")
    # res+=("22222 $arg")
    
    # arr+=("dnf --enablerepo=ARG1 install ARG2 - dnf позволяет установить любой конкретный пакет (скажем, phpmyadmin) из определённого репозитория (к примеру, epel) ")
    # res+=("---")
    
    # echo -e "${BLUE}---enter ARG1---${NORMAL}" #sistem info mesage
    # read -r ARG1
    # echo -e "${BLUE}---enter ARG2---${NORMAL}" #sistem info mesage
    # read -r ARG2
    # echo -e "${BLUE}---${res[18]} --enablerepo=$ARG1 install $ARG2---${NORMAL}" #sistem info mesage
    # dnf --enablerepo="$ARG1" install "$ARG2"
    
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
            sudo ln -s /var/lib/snapd/snap /snap
            snap_ @
        ;;
        
        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[2]} $arg---${NORMAL}" #sistem info mesage
            ${res[2]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[3]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            echo -e "${BLUE}---enter package name---${NORMAL}" #sistem info mesage
            read -r arg
            echo -e "${BLUE}---${res[3]} $arg---${NORMAL}" #sistem info mesage
            ${res[3]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[4]} $arg---${NORMAL}" #sistem info mesage
            ${res[4]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            echo -e "${BLUE}---enter package name---${NORMAL}" #sistem info mesage
            read -r arg
            echo -e "${BLUE}---${res[5]} $arg---${NORMAL}" #sistem info mesage
            ${res[5]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            # ${res[6]}
            snap_ "$@"
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            snap_ "$@"
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            snap_ "$@"
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[9]} $arg---${NORMAL}" #sistem info mesage
            ${res[9]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
            read -r arg
            echo -e "${BLUE}---${res[10]} $arg---${NORMAL}" #sistem info mesage
            ${res[10]} "$arg"
            snap_ "$@"
            
        ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[11]} $arg---${NORMAL}" #sistem info mesage
            ${res[11]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
            read -r arg
            echo -e "${BLUE}---${res[12]} $arg---${NORMAL}" #sistem info mesage
            ${res[12]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[13]} $arg---${NORMAL}" #sistem info mesage
            ${res[13]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[14]} $arg---${NORMAL}" #sistem info mesage
            ${res[14]} "$arg"
            snap_ "$@"
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            arg=$(choice_prog_snap_)
            echo -e "${BLUE}---${res[15]} $arg---${NORMAL}" #sistem info mesage
            ${res[15]} "$arg"
            snap_ "$@"
        ;;
        
        # "${arr[16]}")
        #     echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        #     echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        #     read -r arg
        #     echo -e "${BLUE}---${res[16]} $arg---${NORMAL}" #sistem info mesage
        #     ${res[16]} "$arg"
        #     snap_ "$@"
        # ;;
        
        # "${arr[17]}")
        #     echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        #     echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        #     read -r arg
        #     echo -e "${BLUE}---${res[17]} $arg---${NORMAL}" #sistem info mesage
        #     ${res[17]} "$arg"
        #     snap_ "$@"
        # ;;
        
        # "${arr[18]}")
        #     echo -e "${BLUE}---enter ARG1---${NORMAL}" #sistem info mesage
        #     read -r ARG1
        #     echo -e "${BLUE}---enter ARG2---${NORMAL}" #sistem info mesage
        #     read -r ARG2
        #     echo -e "${BLUE}---${res[18]} --enablerepo=$ARG1 install $ARG2---${NORMAL}" #sistem info mesage
        #     dnf --enablerepo="$ARG1" install "$ARG2"
        #     snap_ "$@"
        # ;;
        
        # "${arr[19]}")
        #     echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        #     ${res[19]}
        #     # snap_ "$@"
        # ;;
        
        # "${arr[20]}")
        #     echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        #     ${res[20]}
        #     # snap_ "$@"
            
        # ;;
        
        
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}

export dnf_

unset filename