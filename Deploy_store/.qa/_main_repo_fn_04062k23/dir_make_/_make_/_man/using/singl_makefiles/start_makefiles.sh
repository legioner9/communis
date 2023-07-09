## #!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/singl_makefiles/start_makefiles.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

# 1.make
# say:
#     echo "Hello, $(HELLO)!"

make say -f "/home/st"/${PATH_MAIN_REPO_FN_DIR}/dir_make_/_make_/_man/singl_makefiles/1.make HELLO=CRAZY

unset filename