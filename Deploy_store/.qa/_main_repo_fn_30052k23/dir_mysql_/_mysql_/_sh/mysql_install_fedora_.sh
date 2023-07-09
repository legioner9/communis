#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_mysql_/_mysql_/_sh/mysql_install_fedora_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

mysql_install_fedora_() {
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    arr=()
    res=()
    arr=("UP menu")
    res=("mysql_")
    arr+=("add Mysql repo rpm 1")
    res+=("sudo dnf install https://repo.mysql.com//mysql80-community-release-fc31-1.noarch.rpm")
    arr+=("install Mysql rpm 2")
    res+=("sudo dnf -y install mysql-community-server")
    arr+=("search init key 3")
    res+=("sudo cat /var/log/mysqld.log | grep root@localhost:")
    # https://blog.programs74.ru/how-to-resolve-mysql-error-1819/#
    arr+=("Configuring MySQL (enter pass from mysqld.log) use qweQWE123!@# 4")
    res+=("sudo mysql_secure_installation")
    arr+=("Removing MySQL")
    res+=("sudo rpm -e --nodeps mysql-community-libs mysql-community-common mysql-community-server")

    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # qweQWE123!@#

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
        mysql_
        ;;

    "${arr[2]}")
        echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
        ${res[2]}
        mysql_
        ;;
    "${arr[3]}")
        echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
        ${res[3]}
        mysql_
        ;;
    "${arr[4]}")
        echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
        ${res[4]}
        mysql_
        ;;
    "${arr[5]}")
        echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
        ${res[5]}
        mysql_
        ;;
    "${arr[6]}")
        echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
        ${res[6]}
        mysql_
        ;;
    "${arr[7]}")
        echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
        ${res[7]}
        mysql_
        ;;
    "${arr[8]}")
        echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
        ${res[8]}
        mysql_
        ;;

    *)
        echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;

    esac
}

unset filename
