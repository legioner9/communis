#!/bin/bash

echo -e "\033[0;36m {fn_name} help: 
            MAIN:  
            NAME: {fn_name}()
            ARGS:
            CNTL: 
            -h  :: echo help (. dir_project/_sh/help.sh [ echo \"help\" ])
            _go :: edit fn_dir (. dir_project/_sh/go.sh [ \$MAINEDITOR dir_project ])
            _rbl:: rebild fn_dir (. dir_project/_sh/rbl.sh [ . dir_project/_sh/_patch/patch_1.sh ] )
            [, -echo, -debug ...]
            TAGS:
            FLOW:
            DEBUG:
            EXAMP:\033[0m}"