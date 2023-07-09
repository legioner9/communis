[0;34m--- exec mm_dogit_ num_menu ---[0m
[0;36m--- mm_dogit_carppafcp_list() CLR.list main.var ---[0m
[0;34m[0m
[0;34m# START EXL FILE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>[0m
[0;34m[0m
[0;34mrr_[0m
[0;34m# head start (ident variables)-----------------------[0m
[0;34m# eval arg_string="--tml "${tml_file}" --name "${name_repo}" -verbose"[0m
[0;34m[0m
[0;34meval echo "\${arg_string}": "${arg_string}"[0m
${arg_string}: --tml ${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var --name fonsh
[0;34meval echo "\${tml_file}": "${tml_file}"[0m
${tml_file}: ${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var
[0;34meval echo "\${name_repo}": "${name_repo}"[0m
${name_repo}: fonsh
[0;34meval echo "\${exl_file}": "${exl_file}"[0m
${exl_file}: ${COMMUNIS_PATH}/Deploy_store/.qa/.exl/git/dogit_carppafcp_name.exl
[0;34m[0m
[0;34m# head end (ident variables)-----------------------[0m
[0;34m[0m
[0;34m# exec block start --------------------------------[0m
[0;34meval gclone_ "${arg_string}"[0m
[0;34m--- info: ignoring::directory not empty git clone  ---[0m
[0;34meval gadd_remote_ "${arg_string}"[0m
[1m--- git remote add GITHUB_LEGIONER9_fonsh git@github.com:legioner9/fonsh.git &>/dev/null ---[0m
[1m--- git remote add GITHUB_LEGIONER9_fonsh git@github.com:legioner9/fonsh.git &>/dev/null ---[0m
[1m--- git remote add HOME_REPOBARE_BARE_fonsh /home/st/REPOBARE/_bare/fonsh &>/dev/null ---[0m
[1m--- git remote add MY_ONE_REPOBARE_BARE_fonsh /run/media/st/MY_ONE/REPOBARE/_bare/fonsh &>/dev/null ---[0m
[1m--- git remote add TOSHIBA_EXT_REPOBARE_BARE_fonsh /run/media/st/TOSHIBA_EXT/REPOBARE/_bare/fonsh &>/dev/null ---[0m
[0;34m--- git remote -v in /run/media/st/TOSHIBA_EXT/REPOBARE/_bare/fonsh<>TOSHIBA_EXT_REPOBARE_BARE_fonsh ---[0m
GITHUB_LEGIONER9_fonsh	git@github.com:legioner9/fonsh.git (fetch)
GITHUB_LEGIONER9_fonsh	git@github.com:legioner9/fonsh.git (push)
HOME_REPOBARE_BARE_fonsh	/home/st/REPOBARE/_bare/fonsh (fetch)
HOME_REPOBARE_BARE_fonsh	/home/st/REPOBARE/_bare/fonsh (push)
MY_ONE_REPOBARE_BARE_fonsh	/run/media/st/MY_ONE/REPOBARE/_bare/fonsh (fetch)
MY_ONE_REPOBARE_BARE_fonsh	/run/media/st/MY_ONE/REPOBARE/_bare/fonsh (push)
TOSHIBA_EXT_REPOBARE_BARE_fonsh	/run/media/st/TOSHIBA_EXT/REPOBARE/_bare/fonsh (fetch)
TOSHIBA_EXT_REPOBARE_BARE_fonsh	/run/media/st/TOSHIBA_EXT/REPOBARE/_bare/fonsh (push)
origin	git@github.com:legioner9/fonsh.git (fetch)
origin	git@github.com:legioner9/fonsh.git (push)
[0;34meval gpush_ "${arg_string}"[0m
[1m--- git push GITHUB_LEGIONER9_fonsh master ---[0m
[0;31m-------- fail: git push GITHUB_LEGIONER9_fonsh master --------[0m
[0;36m---qq_pause() $.1=be return 1 <- Fail: return errno: 1 from:  in fn: exl_, with_args: --list ${COMMUNIS_PATH}/Deploy_store/.qa/.exl/git/dogit_carppafcp_name.exl , filename: /home/st/REPOBARE/_repo/plt/actio/dir_exl_/exl_.sh, line: 0 $.2= $.3=---[0m
[0;31m---message: be return 1 <- Fail: return errno: 1 from:  in fn: exl_, with_args: --list ${COMMUNIS_PATH}/Deploy_store/.qa/.exl/git/dogit_carppafcp_name.exl , filename: /home/st/REPOBARE/_repo/plt/actio/dir_exl_/exl_.sh, line: 0---[0m
[0;31m---file: ---[0m
[0;31m---line: ---[0m
