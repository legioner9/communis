#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/.config/env.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

unset filename
PATH_OS="${COMMUNIS_PATH}/Deploy_store"
PATH_FN="${PATH_OS}/.qa/main_repo_fn" # path to pln
PATH_TAG="${PATH_FN}/_config/agno_tag" # path to tag tree
TSH_book_path="${HOME}/ProjectRepo_2/_repo/BOOK"


PATH_COMMUNIS=${COMMUNIS_PATH}
PATH_MY_ONE=/run/media/${USER}/MY_ONE
PATH_TOSHIBA_EXT=/run/media/${USER}/TOSHIBA_EXT
PATH_TOSH=/run/media/${USER}/TOSH

BASH_USER="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user"

PATH_GIT="${COMMUNIS_PATH}"
PATH_TST_FILE="${PATH_COMMUNIS}/Deploy_store/.qa/.config/.tst"
PATH_ENV_FILE="${PATH_COMMUNIS}/Deploy_store/.qa/.config/env.sh"

LIST3_BCKP_GITPUSH="${PATH_COMMUNIS}/Deploy_store/.qa/.lists/bckp_gitpush.list3"

CEXEC_PROJECT_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec"

MAINEDITOR="codium"

PATH_MAIN_REPO_FN_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn"

#? .args .canons  .config .exl .flumen_tempus .ifs .insert .lists .man .pullsh  .puml .tml  .tst  .var  .vexillum  .warg
PATH_ARGS_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.args"
PATH_CANONS_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.canons"
PATH_CONFIG_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.config"
PATH_EXL_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.exl"
PATH_FLUMEN_TEMPUS_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.flumen_tempus"
PATH_IFS_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.ifs"
PATH_INSERT_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.insert"
PATH_LISTS_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.lists"
PATH_MAN_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.man"
PATH_PULLSH_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.pullsh"
PATH_PUML_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.puml"
PATH_TML_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.tml"
PATH_TST_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.tst"
PATH_VAR_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.var"
PATH_VEXILLUM_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.vexillum"
PATH_WARG_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/.warg"

PATH_CURR_REPO="${HOME}/REPOBARE/_repo"

RETURN_WITH_QQ_EXIT=1
RETURN_WITH_QQ_PAUSE=2
RETURN_WITH_ECHO=3
RETURN_WITH_EXIT_1=4
RETURN_1=5

QQ_EXIT=0