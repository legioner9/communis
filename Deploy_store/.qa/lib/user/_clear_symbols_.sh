#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/clear_symbols_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

clear_symbols_() {                                       #$1 arg to clear $2 replaser _ default
    echo -e "${CYAN}---${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    # if [ -z "$*" ]; then
    #     ques_arg_ ${FUNCNAME[0]}
    # fi

    if_v_h "$1" "clear_symbols_ \$1 is empty"

    if [ -n "$2" ]; then
        replaser=$2
    else
        replaser="_"
    fi

    _clear_symbols_=${1// /_}
    _clear_symbols_=${_clear_symbols_//\!/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\@/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\#/"$replaser"}
    _clear_symbols_=${_clear_symbols_//$/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\%/"$replaser"}
    _clear_symbols_=${_clear_symbols_//^/up}
    _clear_symbols_=${_clear_symbols_//&/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\*/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\`/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\~/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\|/"$replaser"}
    _clear_symbols_=${_clear_symbols_//\//"$replaser"}
    _clear_symbols_=${_clear_symbols_//\\/sl}
    _clear_symbols_=${_clear_symbols_//\:/db}
    _clear_symbols_=${_clear_symbols_//\</mo}
    _clear_symbols_=${_clear_symbols_//\>/le}
    _clear_symbols_=${_clear_symbols_//./po}
    _clear_symbols_=${_clear_symbols_//;/se}
    _clear_symbols_=${_clear_symbols_//\?/qe}
    _clear_symbols_=${_clear_symbols_//\"/}
    _clear_symbols_=${_clear_symbols_//\'/}
    _clear_symbols_=${_clear_symbols_// /}

    export _clear_symbols_

}

unset filename
