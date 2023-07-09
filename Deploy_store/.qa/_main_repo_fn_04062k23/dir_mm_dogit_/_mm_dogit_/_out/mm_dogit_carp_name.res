[0;34m[0m
[0;34m# START EXL FILE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>[0m
[0;34m[0m
[0;34mrr_[0m
[0;34m# head start (ident variables)-----------------------[0m
[0;34meval arg_string="--tml "${tml_file}" --name "${name_repo}" -verbose"[0m
[0;34m[0m
[0;34meval echo "\${arg_string}": "${arg_string}"[0m
${arg_string}: --tml ${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var --name tgu -verbose
[0;34meval echo "\${tml_file}": "${tml_file}"[0m
${tml_file}: ${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var
[0;34meval echo "\${name_repo}": "${name_repo}"[0m
${name_repo}: tgu
[0;34meval echo "\${exl_file}": "${exl_file}"[0m
${exl_file}: ${COMMUNIS_PATH}/Deploy_store/.qa/.exl/git/dogit_carp_name.exl
[0;34m[0m
[0;34m# head end (ident variables)-----------------------[0m
[0;34m[0m
[0;34m# exec block start --------------------------------[0m
[0;34meval gclone_ "${arg_string}"[0m
[0;36m---gclone_() --tml ${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var --name tgu -verbose ---[0m
tml_gclone_=${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var
name_gclone_=tgu
verbose_gclone_=1
[0;34m--- info: ignoring::directory not empty git clone  ---[0m
[0;34meval gadd_remote "${arg_string}"[0m
bash: gadd_remote: команда не найдена
[0;34meval gpush_ "${arg_string}"[0m
[0;36m---gpush_() --tml ${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var --name tgu -verbose ---[0m
tml_gpush_=${COMMUNIS_PATH}/Deploy_store/.qa/.var/git/hsc_alt/main.var
name_gpush_=tgu
verbose_gpush_=1
[1m--- git push GITHUB_LEGIONER9_tgu master ---[0m
Everything up-to-date
[0;34m--- Success: git push GITHUB_LEGIONER9_tgu master ---[0m
[1m--- git push HOME_REPOBARE_BARE_tgu master ---[0m
[0;34m--- Success: git push HOME_REPOBARE_BARE_tgu master ---[0m
[1m--- git push MY_ONE_REPOBARE_BARE_tgu master ---[0m
[0;34m--- Success: git push MY_ONE_REPOBARE_BARE_tgu master ---[0m
[1m--- git push TOSHIBA_EXT_REPOBARE_BARE_tgu master ---[0m
[0;34m--- Success: git push TOSHIBA_EXT_REPOBARE_BARE_tgu master ---[0m
[0;34m# exec block end --------------------------------[0m
[0;34m[0m
[0;34m# END EXL FILE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>[0m
