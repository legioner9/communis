#!/bin/bash

cd ${PATH_CURR_REPO}/communis/Deploy_store/.qa/lib/user/_debug/_deb_ins_last_s

cp init.lst a.lst

ins_last_s "a.lst" "rrrr"

cat a.lst