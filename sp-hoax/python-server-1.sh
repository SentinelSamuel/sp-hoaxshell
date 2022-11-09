#!/bin/bash

sudo apt install powershell

FILE1=../hoaxshell/py.log
FILE2=./info

if test -f "$FILE1"; then 
        sudo rm $FILE1
fi

if 
        test -f "$FILE2"; then 
        sudo rm $FILE2
fi

sudo python3 -m http.server --directory ../ 70
