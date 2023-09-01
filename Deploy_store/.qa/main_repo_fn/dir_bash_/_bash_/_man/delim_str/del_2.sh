#!/bin/bash

string=$1
echo $string | cut -d';' -f1 # output is 1
echo $string | cut -d';' -f2 # output is 2