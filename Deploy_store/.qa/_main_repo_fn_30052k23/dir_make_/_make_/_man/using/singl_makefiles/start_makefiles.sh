## #!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_make_/_make_/_man/singl_makefiles/start_makefiles.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# 1.make
# say:
#     echo "Hello, $(HELLO)!"

make say -f ${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_make_/_make_/_man/singl_makefiles/1.make HELLO=CRAZY

unset filename