#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_apt_alt_/apt_alt_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

apt_alt_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    if [ "_man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "_tst" == "$1" ]; then
        . "$ORIGO_DIR"/"$FNN"tst/exec.tst
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: apt menu for alt
            NAME: ${FUNCNAME[0]}()
            ARGS:
            CNTL: [, -echo, -deb ...]
            TAGS:
            FLOW:
                first start altsys :: apt_alt_ 1
                inst all apt :: apt_alt_ 2
                inst all epm :: apt_alt_ 3
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
        # USE apt_alt_() -echo -deb

        # path_name="$1"

        # if [ $(is_root_01 "$1") -ne 1 ]; then
        #     path_name=$PPWD/$path_name
        # fi

        echo_apt_alt_=0
        deb_apt_alt_=0
        garg_ ${FUNCNAME[0]} $@ 1>/dev/null
        echo_deb_ $echo_apt_alt_ "cntl echo_deb_ mode in ${FUNCNAME[0]}"
        if [ $deb_apt_alt_ -eq 1 ]; then
            echo "DEBUG MODE in ${FUNCNAME[0]}"
        fi

        upd_altsys_apt_alt_() {
            sudo epm full-upgrade --auto -y
        }

        upd_daily_apt_alt_() {

            # sudo apt-get update
            # sudo apt-get dist-upgrade
            # sudo update-kernel
            # sudo epm ei
            sudo epm full-upgrade --auto -y
            sudo epm autoremove -y
            sudo epm autoremove --direct

        }

        upd_virtualbox_apt_alt() {
            sudo epm full-upgrade --auto -y
            sudo apt-get install kernel-modules-virtualbox-$(uname -r | cut -f2,3 -d-)
            sudo update-kernel -f
            sudo gpasswd -a $USER vboxusers
        }

        #? apt utils

        prog_apt=()
        # prog_apt+=("telegram-desktop")
        # prog_apt+=("telegram-desktop")
        # prog_apt+=("telegram-desktop")
        prog_apt+=("eepm")
        prog_apt+=("node")
        prog_apt+=("python")
        prog_apt+=("codium")
        prog_apt+=("gcc++")
        prog_apt+=("make")
        prog_apt+=("git")
        prog_apt+=("gitk")
        prog_apt+=("git-gui")
        prog_apt+=("mate-default")
        prog_apt+=("chromium")
        prog_apt+=("wireshark")
        prog_apt+=("youtube-dl")
        prog_apt+=("snapd")
        prog_apt+=("virtualbox")
        prog_apt+=("lsscsi")
        prog_apt+=("lshw")
        prog_apt+=("usbutils")
        prog_apt+=("ant")
        prog_apt+=("deluge")
        prog_apt+=("inotify-tools")
        prog_apt+=("incron")
        prog_apt+=("plantuml")
        prog_apt+=("meld")
        prog_apt+=("gns3")
        prog_apt+=("i586-wine")
        prog_apt+=("drawing")
        prog_apt+=("apache2")
        prog_apt+=("yad")
        prog_apt+=("newt52")
        prog_apt+=("nginx")
        prog_apt+=("php7 php7-bz2 php7-curl php7-exif php7-mbstring php7-fileinfo php7-fpm-fcgi php7-gd php7-imagick php7-intl php7-mcrypt php7-openssl php7-pcntl php7-pdo php7-pdo_mysql php7-readline php7-ssh2 php7-xmlreader php7-xsl php7-yaml php7-zip php7-mysqli php7-apcu php7-fpm-fcgi")
        prog_apt+=("packagekit")
        prog_apt+=("kde5-kmplot")
        prog_apt+=("gnuplot")
        prog_apt+=("altmediawriter")
        prog_apt+=("telnet")
        prog_apt+=("links2")
        prog_apt+=("composer")
        prog_apt+=("mutt")
        prog_apt+=("eepm")
        prog_apt+=("appinstall")
        prog_apt+=("moin")
        prog_apt+=("htop")
        prog_apt+=("java-11-openjdk")
        prog_apt+=("graphviz")
        prog_apt+=("nautilus")
        prog_apt+=("ruby")
        # prog_apt+=("composer")
        # prog_apt+=("composer")
        # prog_apt+=("composer")
        # prog_apt+=("composer")
        # prog_apt+=("composer")
        # prog_apt+=("composer")
        # prog_apt+=("composer")

        # pyton
        prog_apt+=("python3-module-pip python3-tools")
        prog_apt+=("scribus")
        prog_apt+=("pip zlib-devel libssl-devel libsqlite3-devel libffi-devel")

        #ntfs
        # prog_apt+=("ntfsprogs")
        # prog_apt+=("ntfs-3g")

        prog_apt+=("postgresql15-server")
        prog_apt+=("docker-engine")
        prog_apt+=("docker-engine-rootless")
        prog_apt+=("podman")
        prog_apt+=("docker-compose")
        prog_apt+=("hardinfo")
        prog_apt+=("ncdu")

        prog_apt+=("pip")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")
        # prog_apt+=("telegram")

        #? epm utils

        prog_epm=()
        prog_epm+=("yandex-browser")
        prog_epm+=("yandex-disk")
        prog_epm+=("chrome")
        prog_epm+=("code")
        prog_epm+=("discord")
        prog_epm+=("pycharm")
        prog_epm+=("telegram")
        # prog_epm+=("code")
        # prog_epm+=("code")
        # prog_epm+=("code")
        # prog_epm+=("code")
        # prog_epm+=("code")

        #? npm global packets

        npm_glob_packet=()
        npm_glob_packet+=("npm-completion")
        npm_glob_packet+=("standard")
        npm_glob_packet+=("prettier")
        npm_glob_packet+=("shelljs")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")
        # npm_glob_packet+=("ndb")

        pip_glob_packet=()
        pip_glob_packet+=("pep8")
        pip_glob_packet+=("autopep8")
        pip_glob_packet+=("pycodestyle")
        pip_glob_packet+=("matplotlib")
        pip_glob_packet+=("python-dotenv")
        pip_glob_packet+=("python-decouple")
        pip_glob_packet+=("urllib3")
        pip_glob_packet+=("jinja2")
        pip_glob_packet+=("jango3")
        pip_glob_packet+=("pyTelegramBotApi")
        pip_glob_packet+=("requests")
        pip_glob_packet+=("jupyterlab")
        pip_glob_packet+=("Flask")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")
        # pip_glob_packet+=("pep8")

        inst_all_apt_alt_() {
            inst_apt_apt_alt_
            inst_epm_apt_alt_
            inst_npm_apt_alt_
            inst_pip_apt_alt_
        }

        inst_npm_apt_alt_() {
            for item in "${npm_glob_packet[@]}"; do
                sudo npm install -g "$item"
            done
            # chromium --flag-switches-begin --enable-features=PasswordImport --flag-switches-end
        }

        inst_pip_apt_alt_() {
            for item in "${pip_glob_packet[@]}"; do
                sudo pip install "$item"
            done
            # chromium --flag-switches-begin --enable-features=PasswordImport --flag-switches-end
        }

        inst_apt_apt_alt_() {
            sudo epm full-upgrade --auto -y
            for item in "${prog_apt[@]}"; do
                sudo apt-get install "$item" -y
            done
            # chromium --flag-switches-begin --enable-features=PasswordImport --flag-switches-end
        }

        inst_epm_apt_alt_() {
            sudo epm full-upgrade --auto -y
            sudo epm ei
            sudo epm play i586-fix
            for item in "${prog_epm[@]}"; do
                sudo epm play "$item" -y
            done
        }

        inst_flatpak_apt_alt_() {
            sudo apt-get install flatpak -y
            sudo gpasswd -a st fuse
            flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
            flatpak install flathub PyCharm-Community
        }

        # inst_snap_apt_alt_() {
        #     for item in "${prog_snap[@]}"; do
        #         sudo snap install "$item" -y
        #     done
        # }

        exec_first_start_apt_alt_() {
            upd_daily_apt_alt_
            inst_all_apt_alt_
            upd_virtualbox_apt_alt
        }

        inst_packettrecer_apt_alt_() {
            #? see https://www.altlinux.org/Установка_Cisco_Packet_Tracer_7.3.1_на_ALT_KWorkstation_P9#Удаление_предыдущих_установок_PT
            #? Прежде чем приступить к установке, следует устранить неудовлетворенные зависимости, если таковые есть
            update_inst_packettrecer_apt_alt_() {

                sudo su
                sudo epm full-upgrade --auto -y
                apt-get install dialog xdg-utils gtk-update-icon-cache libpulseaudio libnss libXScrnSaver libalsa libxslt libxkbcommon

            }

            update_inst_packettrecer_apt_alt_

            local flag_y
            read flag_y -e "remove previous install packettrecer?Y/n"

            if [ ${flag_y} == "Y" ]; then

                #? Удаление предыдущих установок PT
                rm -rf /opt/pt
                rm -rf /usr/share/applications/cisco-pt7.desktop
                rm -rf /usr/share/applications/cisco-ptsa7.desktop
                rm -rf /usr/share/icons/hicolor/48x48/apps/pt7.png
                xdg-desktop-menu uninstall /usr/share/applications/cisco-pt7.desktop
                xdg-desktop-menu uninstall /usr/share/applications/cisco-ptsa7.desktop
                update-mime-database /usr/share/mime
                gtk-update-icon-cache --force /usr/share/icons/gnome
                rm -f /usr/local/bin/packettracer

            fi

            #? Распаковка PacketTracer_731_amd64.deb
            mkdir /tmp/PacketTracerInst
            cp /run/media/st/TOSHIBA_EXT/Cisco_Packet_Tracer/packet-tracer-731-amd-64_202008/PacketTracer_731_amd64.deb /tmp/PacketTracerInst
            cd /tmp/PacketTracerInst
            ar -xv PacketTracer_731_amd64.deb
            mkdir control
            tar -C control -Jxf control.tar.xz
            mkdir data
            tar -C data -Jxf data.tar.xz

            #? Мы все еще находимся в каталоге / tmp / PacketTracerInst / data
            cd data
            sudo cp -r usr /
            sudo cp -r opt /

            #? Обновление значков и ассоциации файлов
            sudo xdg-desktop-menu install /usr/share/applications/cisco-pt7.desktop
            sudo xdg-desktop-menu install /usr/share/applications/cisco-ptsa7.desktop
            sudo update-mime-database /usr/share/mime
            sudo gtk-update-icon-cache --force /usr/share/icons/gnome
            sudo xdg-mime default cisco-ptsa7.desktop x-scheme-handler/pttp

            #? Ссылка на PT-стартер
            sudo ln -sf /opt/pt/packettracer /usr/local/bin/packettracer

            #? Для того, чтобы не марать файл /etc/profile создадим новый
            echo -e "#sudo vim /etc/profile.d/packettracer.sh

и вставляем туда следующие строки

PT7HOME=/opt/pt
export PT7HOME
QT_DEVICE_PIXEL_RATIO=auto
export QT_DEVICE_PIXEL_RATIO

sudo chmod +x /etc/profile.d/packettracer.sh
"
            read -p "you do that?"

            sudo -i -u st

        }

        inst_ufw_apt_alt_() {
            #? https://www.altlinux.org/UFW
            #? https://launchpad.net/ufw/+download
            echo

        }

        if [ -n "$1" ] && [ "$1" -eq 1 ]; then
            qq_pause "first start altsys?"
            echo -e "${BLUE}--- exec_first_start_apt_alt_ ---${NORMAL}" #sistem info mesage
            exec_first_start_apt_alt_
            return 0
        fi

        if [ -n "$1" ] && [ "$1" -eq 2 ]; then
            echo -e "${BLUE}--- inst_apt_apt_alt_ ---${NORMAL}" #sistem info mesage
            upd_daily_apt_alt_
            return 0
        fi

        if [ -n "$1" ] && [ "$1" -eq 3 ]; then
            qq_pause "inst all epm?"
            echo -e "${BLUE}--- inst_epm_apt_alt_ ---${NORMAL}" #sistem info mesage
            inst_epm_apt_alt_
            return 0
        fi

        arr=()
        res=()
        arr+=("leave menu")
        res+=("echo bye)))")
        arr+=("first start altsys :: apt_alt_ 1")
        res+=("exec_first_start_apt_alt_")
        arr+=("every day update:: apt_alt_ 2")
        res+=("upd_daily_apt_alt_")

        # arr+=("inst all epm :: apt_alt_ 3")
        # res+=("inst_epm_apt_alt_")
        # arr+=("inst packettrecer only hand inst_packettrecer_apt_alt_")
        # res+=("")
        # arr+=("inst ufw brandmauer only hand inst_ufw_apt_alt_")
        # res+=("")
        # arr+=("every day update")
        # res+=("upd_daily_apt_alt_")

        # arr+=("control")
        # res+=("echo")
        # arr+=("control")
        # res+=("echo")
        # arr+=("control")
        # res+=("echo")
        # arr+=("control")
        # res+=("echo")
        # arr+=("control")
        # res+=("echo")
        # arr+=("control")
        # res+=("echo")

        arr+=("control")
        res+=("echo control)))")

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
            apt_alt_ "$@"
            ;;

        "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
            apt_alt_ "$@"
            ;;

        "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
            apt_alt_ "$@"
            ;;

        "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
            apt_alt_ "$@"
            ;;

        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
            apt_alt_ "$@"
            ;;

        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
            apt_alt_ "$@"
            ;;

        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
            apt_alt_ "$@"
            ;;

        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
            apt_alt_ "$@"
            ;;

        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
            apt_alt_ "$@"
            ;;

        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            apt_alt_ "$@"

            ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
            apt_alt_ "$@"
            ;;

        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
            apt_alt_ "$@"
            ;;

        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
            apt_alt_ "$@"
            ;;

        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
            apt_alt_ "$@"
            ;;

        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
            apt_alt_ "$@"
            ;;

        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
            apt_alt_ "$@"
            ;;

        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
            apt_alt_ "$@"
            ;;

        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
            apt_alt_ "$@"
            ;;

        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
            apt_alt_ "$@"
            ;;

        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            apt_alt_ "$@"

            ;;

        \
            \
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

# apt_alt_ @

unset filename
