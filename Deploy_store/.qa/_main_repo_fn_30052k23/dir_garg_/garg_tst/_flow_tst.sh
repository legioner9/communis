#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_garg_/garg_tst/_flow_tst.sh"

# echo -e "${HLIGHT}---start file://$filename " >> res # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

# garg_ < dat > res

>res
echo  " garg_ prf -a -b --af aff --bf bff " >> res #sistem info mesage
cntl_c_cpjs | garg_ prf -a -b --af aff --bf bff >>res

echo  " garg_ aa -rr -?werr --csa yeyt " >> res #sistem info mesage
cntl_c_cpjs | garg_ aa -rr -?werr --csa yeyt >>res

echo  " garg_ aa -rr -?werr dfrer --csa yeyt " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -rr -?werr dfrer --csa yeyt >>res

echo  " garg_ aa -?werr --cs " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -?werr --cs >>res

echo  " garg_ aa -?werr rtger " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -?werr rtgert >>res

echo  " garg_ aa -?werr " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -?werr >>res

echo  "  garg_ aa -rr --csa " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -rr --csa >>res

echo  " garg_ aa -rr --csa --ergre " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -rr --csa --ergre >>res

echo  " garg_ aa -rr -?werr --csa yeyt " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -rr -?werr --csa yeyt >>res

echo  " garg_ aa -rr --csa yeyt -?werr " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -rr --csa yeyt -?werr >>res

echo  " garg_ aa -rr --csa yeyt -?werr hyetrty " >> res #sistem info mesag
cntl_c_cpjs | garg_ aa -rr --csa yeyt -?werr hyetrty >>res


cd "$idir"

unset filename
