#!/bin/bash

dir_path=/home/st/REPOBARE/_repo/communis/Deploy_store/.qa/lib/user/_debug/deb_sort_file_s

cp "${dir_path}"/init.lst  "${dir_path}"/a.lst 

sort_file_s "${dir_path}"/a.lst