#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="$PATH_FN/dir_dnf_/dnf_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

dnf_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=$PATH_FN/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "_man" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$PATH_FN"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS:
            CNTL: [, -echo, -deb ...]
            TAGS:
            FLOW:
            DEBUG:
            EXAMP:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    # echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    # echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    # echo -e "${GREEN}args = $*${NORMAL}"             #print variable

    # echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    arr=()
    res=()
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")

    case $1 in

    "_0")
        echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
        magic_nm_ "$FNN"

        ;;

    *)
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        cd_h "$PPWD" 1>/dev/null

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        # amount_arg $# min_args max_args
        # USE dnf_() -echo -deb

        # path_name="$1"

        # if [ $(is_root_01 "$1") -ne 1 ]; then
        #     path_name=$PPWD/$path_name
        # fi

        echo_dnf_=0
        deb_dnf_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_dnf_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
        if [ $deb_dnf_ -eq 1 ]; then
            echo "DEBUG MODE in ${FUNCNAME[0]}"
        fi

        dnf_install_fusion_() {
            sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
            sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
        }

        dnf_install_flatpak_() {
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        }

        dnf_install_snap_() {
            sudo dnf install snapd -y
            sudo ln -s /var/lib/snapd/snap /snap
            sudo snap install okular -y
            sudo snap install video-downloader -y
        }

        dnf_install_telegram_() {
            # sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
            sudo dnf install --allowerasing telegram -y
        }

        dnf_install_yandex_() {

            sudo dnf upgrade --refresh -y
            sudo rpmkeys --import https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG
            sudo dnf config-manager --add-repo http://repo.yandex.ru/yandex-browser/rpm/stable/x86_64
            sudo dnf install yandex-browser-stable -y

            rpm --import http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG
            sudo yum install yandex-disk -y

        }

        dnf_install_code_() {

            sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
            sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
            dnf check-update -y
            sudo dnf install code -y

        }

        dnf_install_codecs_() {

            sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
            sudo dnf install lame\* --exclude=lame-devel -y
            sudo dnf group upgrade --with-optional Multimedia -y

        }

        dnf_install_adobe_reader_() {
            snap install acrordrdc
        }

        dnf_install_wine_() {
            sudo dnf -y install dnf-plugins-core
            sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo
            sudo dnf -y install winehq-stable
            wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
            chmod +x winetricks
            sudo mv winetricks /usr/local/bin/
        }

        init_after_install_fedora_() {

            dnf_install_that_
            dnf_install_fusion_
            dnf_install_flatpak_
            dnf_install_snap_
            dnf_install_telegram_
            dnf_install_yandex_
            dnf_install_code_
            dnf_install_codecs_
            dnf_install_adobe_reader
            dnf_install_wine_

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
            arr+=(valgrind)
            arr+=(alleyoop)
            arr+=(kcachegrind)
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
            # arr+=(telegram-desktop)
            arr+=(dnf-utils)
            arr+=(gh)
            arr+=(gitk)
            arr+=(git-gui)
            arr+=(unzip)
            arr+=(p7zip)
            arr+=(unrar)
            arr+=(cabextract)
            arr+=(clang-tools-extra.x86_64)
            arr+=(compat-gdbm-devel)
            arr+=(compat-gdbm-libs)
            arr+=(vlc)
            arr+=(python-vlc)
            arr+=(smplayer)
            arr+=(plex-media-player)
            arr+=(wkhtmltopdf)

            sudo dnf upgrade --best --allowerasing -y

            for item in "${arr[@]}"; do

                sudo dnf install "$item" -y

            done

        }

        # c_up "$PATH_OS/.qa/menus/_set_menu/_mm_flow_/_mm_0_start_sys_/_dnf_"

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

        arr+=("install Telegram")
        res+=("dnf_install_telegram_")

        arr+=("Init After Install Fedora")
        res+=("init_after_install_fedora_")

        arr+=("code --verbose")
        res+=("code --verbose")

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
        "${arr[30]}")
            echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
            ${res[30]}
            dnf_ "$@"

            ;;
        "${arr[31]}")
            echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
            ${res[31]}
            dnf_ "$@"

            ;;
        "${arr[32]}")
            echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
            ${res[32]}
            dnf_ "$@"

            ;;
        "${arr[33]}")
            echo -e "${CYAN}---${res[33]}---${NORMAL}" #started functions
            ${res[33]}
            dnf_ "$@"

            ;;
        "${arr[34]}")
            echo -e "${CYAN}---${res[34]}---${NORMAL}" #started functions
            ${res[34]}
            dnf_ "$@"

            ;;
        "${arr[35]}")
            echo -e "${CYAN}---${res[35]}---${NORMAL}" #started functions
            ${res[35]}
            dnf_ "$@"

            ;;
        "${arr[36]}")
            echo -e "${CYAN}---${res[36]}---${NORMAL}" #started functions
            ${res[36]}
            dnf_ "$@"

            ;;
        "${arr[37]}")
            echo -e "${CYAN}---${res[37]}---${NORMAL}" #started functions
            ${res[37]}
            dnf_ "$@"

            ;;

        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
            ;;
        esac

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        cd "$PPWD"

        ;;

    esac

}

# dnf_ @

unset filename
