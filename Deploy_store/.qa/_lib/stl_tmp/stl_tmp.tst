#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl_tmp/stl_tmp.tis"

# NOT ANY echo !!!!!!!!!!!

## IF require ALL_CHECKED_FUNCTIONS  $(any_function "test") contract: return true-fail(echo >&1 - echo >&2)

check_dir_tst "$filename"

unset filename
