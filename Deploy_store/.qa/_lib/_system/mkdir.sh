#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/mkdir.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

# Использование: mkdir [ПАРАМЕТР]… КАТАЛОГ…
# Создаёт КАТАЛОГ(и), если он ещё не существует.

#   -m, --mode=РЕЖИМ   установить права доступа к файлу (как в chmod),
#                      а не a=rwx - umask
#   -p, --parents      не выдавать ошибку, если существует; создавать
#                      родительские каталоги при необходимости
#   -v, --verbose      печатать сообщение о каждом созданном каталоге
#   -Z                 установить контекст безопасности SELinux
#                      каждого создаваемого каталога равным типу по умолчанию
#       --context[=CTX]  подобно -Z, или если указан CTX, то установить
#                      контекст безопасности SELinux
#                      или SMACK равным CTX
#       --help     показать эту справку и выйти
#       --version  показать информацию о версии и выйти

aai_mkdir(){
    
    arr=()
    res=()
    arr+=("mkdir -m, --mode=РЕЖИМ   установить права доступа к файлу (как в chmod), а не a=rwx - umask")
    res+=("mkdir -m $*")
    arr+=("mkdir -p, --parents  не выдавать ошибку, если существует; создавать родительские каталоги при необходимости")
    res+=("mkdir -p $*")
    arr+=("mkdir -v, --verbose      печатать сообщение о каждом созданном каталоге установить контекст безопасности SELinux")
    res+=("mkdir -v $*")

    
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
        ;;
        
       "${arr[2]}")
            echo -e "${CYAN}---${res[2]}---${NORMAL}" #started functions
            ${res[2]}
        ;;
        
       "${arr[3]}")
            echo -e "${CYAN}---${res[3]}---${NORMAL}" #started functions
            ${res[3]}
        ;;
        
       "${arr[4]}")
            echo -e "${CYAN}---${res[4]}---${NORMAL}" #started functions
            ${res[4]}
        ;;
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;

    esac
    
}

export aai_mkdir

unset filename