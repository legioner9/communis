#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/menus/_set_menu/_mm_flow/_mm_0_start_sys/rpm_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

rpm_() {
    echo -e "${CYAN}---rpm_() $*---${NORMAL}" #started functions

    c_up "$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_rpm_"

    echo -e "

    Утилита может работать в одном из режимов:

        -q, --query - запрос, получение информации;
        -i, --install - установка;
        -V, --verify - проверка пакетов;
        -U, --upgrade - обновление;
        -e, --erase - удаление.

    опции программы:

        -v - показать подробную информацию;
        --vv - выводить отладочную информацию;
        --quiet - выводить как можно меньше информации;
        -h - выводить статус-бар;
        --percent - выводить информацию в процентах о процессе распаковки;
        --force - выполнять действие принудительно;
        --nodeps - не проверять зависимости;
        --replacefiles - заменять все старые файлы на новые без предупреждений;
        -i - получить информацию о пакете;
        -l - список файлов пакета;
        -R - вывести пакеты, от которых зависит этот пакет;

    "

    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    arr+=("sudo rpm -qa - все установленные пакеты rpm")
    res+=("sudo rpm -qa")
    arr+=("sudo rpm -qa --last - все недавно установленные пакеты rpm")
    res+=("sudo rpm -qa --last")
    arr+=("sudo rpm -Va - проверить все установленные пакеты rpm")
    res+=("sudo rpm -Va")
    arr+=("sudo rpm -Uvh enter arg - для обновления пакета")
    res+=("sudo rpm -Uvh")
    #5
    arr+=("sudo rpm -Uvh choice arg - для обновления пакета")
    res+=("sudo rpm -Uvh")
    arr+=("sudo rpm -qip enter arg - запрос информации о пакете")
    res+=("sudo rpm -qip")
    arr+=("sudo rpm -qip choice arg - запрос информации о пакете")
    res+=("sudo rpm -qip")
    arr+=("sudo rpm -ivh enter arg - для установки определенного пакета")
    res+=("sudo rpm -ivh")
    arr+=("sudo rpm -ivh choice arg - для установки определенного пакета")
    res+=("sudo rpm -ivh")
    #10
    arr+=("sudo rpm -qa | grep enter arg - grep по установленным пакетам")
    res+=("sudo rpm -qa | grep")
    arr+=("sudo rpm -qa | grep choice arg - grep по установленным пакетам")
    res+=("sudo rpm -qa | grep")
    arr+=("sudo rpm -ivh --nodeps enter arg - для установки определенного пакета без зависимостей")
    res+=("sudo rpm -ivh --nodeps")
    arr+=("sudo rpm -ivh --nodeps choice arg - для установки определенного пакета без зависимостей")
    res+=("sudo rpm -ivh --nodeps")
    arr+=("sudo rpm -ivh --replacepkgs enter arg - для замены установленного пакета")
    res+=("sudo rpm -ivh --replacepkgs")
    #15
    arr+=("sudo rpm -ivh --replacepkgs choice arg - для замены установленного пакета")
    res+=("sudo rpm -ivh --replacepkgs")
    arr+=("sudo rpm -e --nodeps enter arg - для удаления определенного пакета, установленного без зависимостей")
    res+=("sudo rpm -e --nodeps")
    arr+=("sudo rpm -e --nodeps choice arg - для удаления определенного пакета, установленного без зависимостей")
    res+=("sudo rpm -e --nodeps")
    arr+=("sudo rpm -q enter arg - покажет, установлен ли пакет или нет")
    res+=("sudo rpm -q")
    arr+=("sudo rpm -q choice arg - покажет, установлен ли пакет или нет")
    res+=("sudo rpm -q")
    #20
    arr+=("sudo rpm -qf enter arg - узнать к какому пакету RPM относится файл")
    res+=("sudo rpm -qf")
    arr+=("sudo rpm -qf choice arg - узнать к какому пакету RPM относится файл")
    res+=("sudo rpm -qf")
    arr+=("sudo rpm -qi enter arg - получить информацию для конкретного пакета")
    res+=("sudo rpm -qi")
    arr+=("sudo rpm -qi choice arg - получить информацию для конкретного пакета")
    res+=("sudo rpm -qi")
    arr+=("sudo rpm -Vp enter arg - проверить пакет, сравнив информацию об установленных файлах пакета с базой данных rpm")
    res+=("sudo rpm -Vp")
    #25
    arr+=("sudo rpm -Vp choice arg - проверить пакет, сравнив информацию об установленных файлах пакета с базой данных rpm")
    res+=("sudo rpm -Vp")
    arr+=("sudo rpm --rebuilddb - Для запуска пересборки базы данных RPM")
    res+=("sudo rpm --rebuilddb")
    arr+=("/var/lib/rpm - RPM LIB")
    res+=("00000")
    arr+=("sudo dnf install python3-dnf-plugin-versionlock - Установим плагин versionlock для dnf:")
    res+=("sudo dnf install python3-dnf-plugin-versionlock")
    arr+=("sudo dnf versionlock add enter arg - Отметим пакеты, версии которых будут закреплены")
    res+=("udo dnf versionlock add")
    #30
    arr+=("sudo dnf versionlock exclude enter arg - Отметим пакеты, которые будут игнорироваться в любых транзакциях")
    res+=("sudo dnf versionlock exclude")
    # arr+=("&&&&&&&&& choice arg - &&&&&&&&& snap package management")
    # res+=("&&&&&&&&&")

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

    # arg=$(choice_prog_rpm_)
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
        rpm_ "$@"
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        rpm_ "$@"
        ;;

    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        rpm_ "$@"
        ;;

    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[4]} $arg---${NORMAL}" #sistem info mesage
        ${res[4]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[5]} $arg---${NORMAL}" #sistem info mesage
        ${res[5]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[6]} $arg---${NORMAL}" #sistem info mesage
        ${res[6]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[7]} $arg---${NORMAL}" #sistem info mesage
        ${res[7]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[8]} $arg---${NORMAL}" #sistem info mesage
        ${res[8]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[9]}")
        echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[9]} $arg---${NORMAL}" #sistem info mesage
        ${res[9]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[10]}")
        echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[10]} $arg---${NORMAL}" #sistem info mesage
        ${res[10]} | grep "$arg"
        rpm_ "$@"

        ;;
    "${arr[11]}")
        echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[11]} $arg---${NORMAL}" #sistem info mesage
        ${res[11]} | grep "$arg"
        rpm_ "$@"
        ;;

    "${arr[12]}")
        echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[12]} $arg---${NORMAL}" #sistem info mesage
        ${res[12]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[13]}")
        echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[13]} $arg---${NORMAL}" #sistem info mesage
        ${res[13]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[14]}")
        echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[14]} $arg---${NORMAL}" #sistem info mesage
        ${res[14]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[15]}")
        echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[15]} $arg---${NORMAL}" #sistem info mesage
        ${res[15]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[16]}")
        echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[16]} $arg---${NORMAL}" #sistem info mesage
        ${res[16]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[17]}")
        echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[17]} $arg---${NORMAL}" #sistem info mesage
        ${res[17]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[18]}")
        echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[18]} $arg---${NORMAL}" #sistem info mesage
        ${res[18]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[19]}")
        echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[19]} $arg---${NORMAL}" #sistem info mesage
        ${res[19]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[20]}")
        echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[20]} $arg---${NORMAL}" #sistem info mesage
        ${res[20]} "$arg"
        rpm_ "$@"

        ;;

    "${arr[21]}")
        echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[21]} $arg---${NORMAL}" #sistem info mesage
        ${res[21]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[22]}")
        echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[22]} $arg---${NORMAL}" #sistem info mesage
        ${res[22]} "$arg"
        rpm_ "$@"

        ;;

    "${arr[23]}")
        echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[23]} $arg---${NORMAL}" #sistem info mesage
        ${res[23]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[24]}")
        echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[24]} $arg---${NORMAL}" #sistem info mesage
        ${res[24]} "$arg"
        rpm_ "$@"

        ;;

    "${arr[25]}")
        echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
        arg=$(choice_prog_rpm_)
        echo -e "${BLUE}---${res[25]} $arg---${NORMAL}" #sistem info mesage
        ${res[25]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[26]}")
        echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
        # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        # read -r arg
        # echo -e "${BLUE}---${res[26]} $arg---${NORMAL}" #sistem info mesage
        ${res[26]} "$arg"
        rpm_ "$@"

        ;;

    "${arr[27]}")
        echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
        # arg=$(choice_prog_rpm_)
        # echo -e "${BLUE}---${res[27]} $arg---${NORMAL}" #sistem info mesage
        ${res[27]} "$arg"
        rpm_ "$@"
        ;;

    "${arr[28]}")
        echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
        # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        # read -r arg
        # echo -e "${BLUE}---${res[28]} $arg---${NORMAL}" #sistem info mesage
        ${res[28]} "$arg"
        rpm_ "$@"

        ;;
    "${arr[29]}")
        echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
        echo -e "${BLUE}---enter arg---${NORMAL}"  #sistem info mesage
        read -r arg
        echo -e "${BLUE}---${res[29]} $arg---${NORMAL}" #sistem info mesage
        ${res[29]} "$arg"
        rpm_ "$@"

        ;;
    "${arr[30]}")
        echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
        # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        # read -r arg
        # echo -e "${BLUE}---${res[28]} $arg---${NORMAL}" #sistem info mesage
        ${res[30]} "$arg"
        rpm_ "$@"

        ;;
    "${arr[31]}")
        echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
        # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        # read -r arg
        # echo -e "${BLUE}---${res[31]} $arg---${NORMAL}" #sistem info mesage
        # ${res[31]} "$arg"
        rpm_ "$@"

        ;;
    "${arr[32]}")
        echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
        # echo -e "${BLUE}---enter arg---${NORMAL}" #sistem info mesage
        # read -r arg
        # echo -e "${BLUE}---${res[28]} $arg---${NORMAL}" #sistem info mesage
        # ${res[32]} "$arg"
        rpm_ "$@"

        ;;

    \
        \
        *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac

}
export rpm_

unset filename
