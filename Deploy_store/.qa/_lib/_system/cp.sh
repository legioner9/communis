#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/cp.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

aai_cp(){
    
    arr=()
    res=()
    arr+=("cp --attributes-only - не копировать содержимое файла, а только флаги доступа и владельца;")
    res+=("cp --attributes-only $*")
    arr+=("cp -f, --force - перезаписывать существующие файлы;")
    res+=("cp -f $*")
    arr+=("cp -i, --interactive - спрашивать, нужно ли перезаписывать существующие файлы;")
    res+=("cp -i $*")
    arr+=("cp -L - копировать не символические ссылки, а то, на что они указывают;")
    res+=("cp -L $*")
    arr+=("cp -n - не перезаписывать существующие файлы;")
    res+=("cp -n $*")
    arr+=("cp -P - не следовать символическим ссылкам;")
    res+=("cp -P $*")
    arr+=("cp -r - копировать папку Linux рекурсивно;")
    res+=("cp -r $*")
    arr+=("cp -s - не выполнять копирование файлов в Linux, а создавать символические ссылки;")
    res+=("cp -s $*")
    arr+=("cp -u - скопировать файл, только если он был изменён;")
    res+=("cp -u $*")
    arr+=("cp -x - не выходить за пределы этой файловой системы;")
    res+=("cp -x $*")
    arr+=("cp -n - не перезаписывать существующие файлы;")
    res+=("cp -n $*")
    arr+=("cp -p - сохранять владельца, временные метки и флаги доступа при копировании;")
    res+=("cp -p $*")
    arr+=("cp -t - считать файл-приемник директорией и копировать файл-источник в эту директорию")
    res+=("cp -t $*")
    
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

export aai_cp

unset filename