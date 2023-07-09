#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow/_mm_0_start_sys/dnf_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

# dnf_

dnf_() {
    echo -e "${CYAN}---dnf_() $*---${NORMAL}" #started functions

    dnf_install_yandex_() {

        sudo dnf upgrade --refresh -y
        sudo rpmkeys --import https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG
        sudo dnf config-manager --add-repo http://repo.yandex.ru/yandex-browser/rpm/stable/x86_64
        sudo dnf install yandex-browser-stable -y

    }

    dnf_install_code_() {

        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        dnf check-update
        sudo dnf install code -y

    }

    init_after_install_fedora_() {

        dnf_install_yandex_
        dnf_install_code_
        dnf_install_that_

    }

    dnf_install_that_() {

        # sudo dnf install nodejs putty lshw lshw-gui hdparm hwinfo lsscsi inxi lsb snapd gvim postgresql-server postgresql-contrib mypaint java-latest-openjdk-devel.x86_64 
        # java-latest-openjdk.x86_64 dotnet backintime-qt4 deja-dup clementine 
        # qbittorrent uget konsole syncthing mediawriter telegram-desktop dnf-utils gh
        arr=()
        arr+=(nodejs)
        arr+=(putty)
        arr+=(lshw)
        arr+=(lshw-gui)
        arr+=(hdparm)
        arr+=(hwinfo)
        arr+=(lsscsi)
        arr+=(inxi)
        arr+=(lsb)
        arr+=(snapd)
        arr+=(gvim)
        arr+=(postgresql-server)
        arr+=(postgresql-contrib)
        arr+=(mypaint)
        arr+=(java-latest-openjdk-devel.x86_64)
        arr+=(java-latest-openjdk.x86_64)
        arr+=(dotnet)
        arr+=(backintime-qt4)
        arr+=(deja-dup)
        arr+=(clementine)
        arr+=(qbittorrent)
        arr+=(uget)
        arr+=(konsole)
        arr+=(syncthing)
        arr+=(mediawriter)
        arr+=(telegram-desktop)
        arr+=(dnf-utils)
        arr+=(gh)
        arr+=(gitk)
        arr+=(git-gui)

        sudo dnf upgrade --best --allowerasing -y

        for item in "${arr[@]}"; do

            sudo dnf install "$item" -y

        done

    }

    c_up "$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_dnf_"

    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("sudo dnf autoremove - dnf удалить осиротевшие пакеты")
    res+=("sudo dnf autoremove")
    arr+=("dnf_install_ choice arg - dnf package management")
    res+=("dnf_install_")
    arr+=("dnf_install_ enter arg - dnf package management")
    res+=("dnf_install_")
    arr+=("sudo dnf remove choice arg - dnf package management")
    res+=("sudo dnf remove")
    #5
    arr+=("sudo dnf remove enter arg - dnf package management")
    res+=("sudo dnf remove")
    arr+=("sudo dnf upgrade --best --allowerasing - dnf package all update")
    res+=("sudo dnf upgrade --best --allowerasing")
    arr+=("dnf repolist - dnf all up repo")
    res+=("dnf repolist")
    arr+=("dnf repolist all - dnf all up/down repo")
    res+=("dnf repolist all")
    arr+=("dnf list installed - dnf all up package")
    res+=("dnf list installed")
    #10
    arr+=("dnf search enter arg - dnf search package")
    res+=("dnf search")
    arr+=("dnf info enter arg - dnf узнать информацию о пакете до его установки")
    res+=("dnf info")
    arr+=("dnf provides enter arg - dnf ищет имя пакета, к которому принадлежит определенный файл")
    res+=("dnf provides")
    arr+=("dnf clean all - dnf можем очистить все кэшированные пакеты и заголовки, содержащие информацию об удаленных пакетах")
    res+=("dnf clean all")
    arr+=("dnf history - dnf посмотреть список уже выполненных команд dnf")
    res+=("dnf history")
    #15
    arr+=("dnf grouplist - dnf выведет список всех известных групп")
    res+=("dnf grouplist")
    arr+=("sudo dnf groupinstall enter arg - dnf установить группу пакетов, связанных вместе, как групповой пакет (скажем, образовательное программное обеспечение) ")
    res+=("sudo dnf groupinstall")
    arr+=("sudo dnf groupupdate enter arg - dnf обновим групповой пакет ")
    res+=("sudo dnf groupupdate")
    arr+=("dnf --enablerepo=ARG1 install ARG2 - dnf позволяет установить любой конкретный пакет (скажем, phpmyadmin) из определённого репозитория (к примеру, epel) ")
    res+=("---")
    arr+=("sudo dnf install all_init_packages")
    res+=("dnf_install_that_")
    #20
    arr+=("dnf flow Any packeges")
    res+=("dnf_pack_")
    arr+=("install dnf-utils")
    res+=("sudo dnf install dnf-utils")

    arr+=("package-cleanup --cleandupes - Удалим дубликаты и повреждённые пакеты")
    res+=("sudo package-cleanup --cleandupes")

    arr+=("install Yandex")
    res+=("dnf_install_yandex_")

    arr+=("install VSCode")
    res+=("dnf_install_code_")

    arr+=("Init After Install Fedora")
    res+=("init_after_install_fedora_")

    # arr+=("22222 arg - send echo_request to network hosts")
    # res+=("22222 $arg")

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

    select item in "${arr[@]}"; do

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
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        arg=$(choice_prog_dnf_)
        echo -e "${BLUE}---${res[2]} $arg---${NORMAL}" #sistem info mesage
        ${res[2]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}"          #started functions
        echo -e "${BLUE}---enter package name---${NORMAL}" #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[3]} $arg---${NORMAL}" #sistem info mesage
        ${res[3]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        arg=$(choice_prog_dnf_)
        echo -e "${BLUE}---${res[4]} $arg---${NORMAL}" #sistem info mesage
        ${res[4]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}"          #started functions
        echo -e "${BLUE}---enter package name---${NORMAL}" #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[5]} $arg---${NORMAL}" #sistem info mesage
        ${res[5]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        dnf_ "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        ${res[7]}
        dnf_ "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        ${res[8]}
        dnf_ "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
        ${res[9]}
        dnf_ "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[10]} $arg---${NORMAL}" #sistem info mesage
        ${res[10]} "$arg"
        dnf_ "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[11]} $arg---${NORMAL}" #sistem info mesage
        ${res[11]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[12]} $arg---${NORMAL}" #sistem info mesage
        ${res[12]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
        ${res[13]}
        dnf_ "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
        ${res[14]}
        dnf_ "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
        ${res[15]}
        dnf_ "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[16]} $arg---${NORMAL}" #sistem info mesage
        ${res[16]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[17]} $arg---${NORMAL}" #sistem info mesage
        ${res[17]} "$arg"
        dnf_ "$@"
        ;;

    "${arr[18]}")
        echo -e "${BLUE}---enter ARG1---${NORMAL}" #sistem info mesage
        read -r ARG1
        echo -e "${BLUE}---enter ARG2---${NORMAL}" #sistem info mesage
        read -r ARG2
        echo -e "${BLUE}---${res[18]} --enablerepo=$ARG1 install $ARG2---${NORMAL}" #sistem info mesage
        dnf --enablerepo="$ARG1" install "$ARG2"
        dnf_ "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        ${res[19]}
        dnf_ "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        ${res[20]}
        dnf_ "$@"
        ;;
    "${arr[21]}")
        echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
        ${res[21]}
        dnf_ "$@"
        ;;
    "${arr[22]}")
        echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
        ${res[22]}
        dnf_ "$@"
        ;;
    "${arr[23]}")
        echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
        ${res[23]}
        dnf_ "$@"
        ;;
    "${arr[24]}")
        echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
        ${res[24]}
        dnf_ "$@"
        ;;
    "${arr[25]}")
        echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
        ${res[25]}
        dnf_ "$@"
        ;;
    "${arr[26]}")
        echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
        ${res[26]}
        dnf_ "$@"
        ;;
    "${arr[27]}")
        echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
        ${res[27]}
        dnf_ "$@"
        ;;
    "${arr[28]}")
        echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
        ${res[28]}
        dnf_ "$@"
        ;;

    "${arr[29]}")
        echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
        ${res[29]}
        dnf_ "$@"

        ;;

    *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac

}

export dnf_

unset filename
