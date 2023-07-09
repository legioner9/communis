#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_OS/.qa/lib/system/fs.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

aai_ls(){
    echo -e "${CYAN}---aa_ls() $*---${NORMAL}" #started functions
    
    arr=()
    res=()
    arr+=("ls -a - отображать все файлы, включая скрытые, это те, перед именем которых стоит точка;")
    res+=("ls -a $*")
    arr+=("ls -A - не отображать ссылку на текущую папку и корневую папку . и ..;")
    res+=("ls -A $*")
    arr+=("ls --author - выводить создателя файла в режиме подробного списка;")
    res+=("ls --author $*")
    arr+=("ls -b - выводить Escape последовательности вместо непечатаемых символов;")
    res+=("ls -b $*")
    arr+=("ls --block-size - выводить размер каталога или файла в определенной единице измерения")
    res+=("ls --block-size $*")
    arr+=("ls -B - не выводить резервные копии, их имена начинаются с ~;")
    res+=("ls -B $*")
    arr+=("ls -c - сортировать файлы по времени модификации или создания, сначала будут выведены новые файлы;")
    res+=("ls -c $*")
    arr+=("ls -C - выводить колонками;")
    res+=("ls -C $*")
    arr+=("ls -d - выводить только директории, без их содержимого, полезно при рекурсивном выводе;")
    res+=("ls -d $*")
    arr+=("ls -D - использовать режим вывода, совместимый с Emacs;")
    res+=("ls -D $*")
    arr+=("ls -f - не сортировать;")
    res+=("ls -f $*")
    arr+=("ls -F - показывать тип объекта, к каждому объекту будет добавлен один из специализированных символов */=>@|;")
    res+=("ls -a $*")
    arr+=("ls --full-time - показывать подробную информацию, плюс вся информация о времени в формате ISO;")
    res+=("ls --full-time $*")
    arr+=("ls -g - показывать подробную информацию, но кроме владельца файла;")
    res+=("ls -g $*")
    arr+=("ls --group-directories-first - сначала отображать директории, а уже потом файлы;")
    res+=("ls --group-directories-first $*")
    arr+=("ls -G - не выводить имена групп;")
    res+=("ls -G $*")
    arr+=("ls -h - выводить размеры папок в удобном для чтения формате;")
    res+=("ls -h $*")
    arr+=("ls -H - открывать символические ссылки при рекурсивном использовании;")
    res+=("ls -H $*")
    arr+=("ls --hide - не отображать файлы, которые начинаются с указанного символа;")
    res+=("ls --hide $*")
    arr+=("ls -i - отображать номер индекса inode, в которой хранится этот файл;")
    res+=("ls -i $*")
    arr+=("ls -l - выводить подробный список, в котором будет отображаться владелец, группа, дата создания, размер и другие параметры;")
    res+=("ls -l $*")
    arr+=("ls -L - для символических ссылок отображать информацию о файле, на который они ссылаются;")
    res+=("ls -L $*")
    arr+=("ls -m - разделять элементы списка запятой;")
    res+=("ls -m $*")
    arr+=("ls -n - выводить UID и GID вместо имени и группы пользователя;")
    res+=("ls -n $*")
    arr+=("ls -N - выводить имена как есть, не обрабатывать контролирующие последовательности;")
    res+=("ls -N $*")
    arr+=("ls -Q - брать имена папок и файлов в кавычки;")
    res+=("ls -Q $*")
    arr+=("ls -r - обратный порядок сортировки;")
    res+=("ls -r $*")
    arr+=("ls -R - рекурсивно отображать содержимое поддиректорий;")
    res+=("ls -R $*")
    arr+=("ls -s - выводить размер файла в блоках;")
    res+=("ls -s $*")
    arr+=("ls -S - сортировать по размеру, сначала большие;")
    res+=("ls -S $*")
    arr+=("ls -t - сортировать по времени последней модификации;")
    res+=("ls -t $*")
    arr+=("ls -u - сортировать по времени последнего доступа;")
    res+=("ls -u $*")
    arr+=("ls -U - не сортировать;")
    res+=("ls -U $*")
    arr+=("ls -X - сортировать по алфавиту;")
    res+=("ls -X $*")
    arr+=("ls -Z - отображать информацию о расширениях SELinux;")
    res+=("ls -Z $*")
    arr+=("ls -1 - отображать один файл на одну строку.")
    res+=("ls -1 $*")
    
    
    
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
        
        "${arr[5]}")
            echo -e "${CYAN}---${res[5]}---${NORMAL}" #started functions
            ${res[5]}
        ;;
        
        "${arr[6]}")
            echo -e "${CYAN}---${res[6]}---${NORMAL}" #started functions
            ${res[6]}
        ;;
        
        "${arr[7]}")
            echo -e "${CYAN}---${res[7]}---${NORMAL}" #started functions
            ${res[7]}
        ;;
        
        "${arr[8]}")
            echo -e "${CYAN}---${res[8]}---${NORMAL}" #started functions
            ${res[8]}
        ;;
        
        "${arr[9]}")
            echo -e "${CYAN}---${res[9]}---${NORMAL}" #started functions
            ${res[9]}
        ;;
        
        "${arr[10]}")
            echo -e "${CYAN}---${res[10]}---${NORMAL}" #started functions
            ${res[10]}
            
        ;;
        "${arr[11]}")
            echo -e "${CYAN}---${res[11]}---${NORMAL}" #started functions
            ${res[11]}
        ;;
        
        "${arr[12]}")
            echo -e "${CYAN}---${res[12]}---${NORMAL}" #started functions
            ${res[12]}
        ;;
        
        "${arr[13]}")
            echo -e "${CYAN}---${res[13]}---${NORMAL}" #started functions
            ${res[13]}
        ;;
        
        "${arr[14]}")
            echo -e "${CYAN}---${res[14]}---${NORMAL}" #started functions
            ${res[14]}
        ;;
        
        "${arr[15]}")
            echo -e "${CYAN}---${res[15]}---${NORMAL}" #started functions
            ${res[15]}
        ;;
        
        "${arr[16]}")
            echo -e "${CYAN}---${res[16]}---${NORMAL}" #started functions
            ${res[16]}
        ;;
        
        "${arr[17]}")
            echo -e "${CYAN}---${res[17]}---${NORMAL}" #started functions
            ${res[17]}
        ;;
        
        "${arr[18]}")
            echo -e "${CYAN}---${res[18]}---${NORMAL}" #started functions
            ${res[18]}
        ;;
        
        "${arr[19]}")
            echo -e "${CYAN}---${res[19]}---${NORMAL}" #started functions
            ${res[19]}
        ;;

        "${arr[20]}")
            echo -e "${CYAN}---${res[20]}---${NORMAL}" #started functions
            ${res[20]}
            
        ;;
        "${arr[21]}")
            echo -e "${CYAN}---${res[21]}---${NORMAL}" #started functions
            ${res[21]}
        ;;
        
        "${arr[22]}")
            echo -e "${CYAN}---${res[22]}---${NORMAL}" #started functions
            ${res[22]}
        ;;
        
        "${arr[23]}")
            echo -e "${CYAN}---${res[23]}---${NORMAL}" #started functions
            ${res[23]}
        ;;
        
        "${arr[24]}")
            echo -e "${CYAN}---${res[24]}---${NORMAL}" #started functions
            ${res[24]}
        ;;
        
        "${arr[25]}")
            echo -e "${CYAN}---${res[25]}---${NORMAL}" #started functions
            ${res[25]}
        ;;
        
        "${arr[26]}")
            echo -e "${CYAN}---${res[26]}---${NORMAL}" #started functions
            ${res[26]}
        ;;
        
        "${arr[27]}")
            echo -e "${CYAN}---${res[27]}---${NORMAL}" #started functions
            ${res[27]}
        ;;
        
        "${arr[28]}")
            echo -e "${CYAN}---${res[28]}---${NORMAL}" #started functions
            ${res[28]}
        ;;
        
        "${arr[29]}")
            echo -e "${CYAN}---${res[29]}---${NORMAL}" #started functions
            ${res[29]}
        ;;

        "${arr[30]}")
            echo -e "${CYAN}---${res[30]}---${NORMAL}" #started functions
            ${res[30]}
            
        ;;
        "${arr[31]}")
            echo -e "${CYAN}---${res[31]}---${NORMAL}" #started functions
            ${res[31]}
        ;;
        
        "${arr[32]}")
            echo -e "${CYAN}---${res[32]}---${NORMAL}" #started functions
            ${res[32]}
        ;;
        
        "${arr[33]}")
            echo -e "${CYAN}---${res[33]}---${NORMAL}" #started functions
            ${res[33]}
        ;;
        
        "${arr[34]}")
            echo -e "${CYAN}---${res[34]}---${NORMAL}" #started functions
            ${res[34]}
        ;;
        
        "${arr[35]}")
            echo -e "${CYAN}---${res[35]}---${NORMAL}" #started functions
            ${res[35]}
        ;;
        
        "${arr[36]}")
            echo -e "${CYAN}---${res[36]}---${NORMAL}" #started functions
            ${res[36]}
        ;;
        
        "${arr[37]}")
            echo -e "${CYAN}---${res[37]}---${NORMAL}" #started functions
            ${res[37]}
        ;;
        
        "${arr[38]}")
            echo -e "${CYAN}---${res[38]}---${NORMAL}" #started functions
            ${res[38]}
        ;;
        
        "${arr[39]}")
            echo -e "${CYAN}---${res[39]}---${NORMAL}" #started functions
            ${res[39]}
        ;;
        
        
        
        
        
        
        *)
            echo -e "${BLUE}---error dilectus---${NORMAL}" #sistem info mesage
        ;;
    esac
    
}


export aai_ls

unset filename

#  aa_ls 3 4 5
