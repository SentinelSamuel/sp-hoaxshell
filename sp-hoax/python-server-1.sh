#!/bin/bash

FILE1=/home/kali/python-server/reverse-shells/hoaxshell/py.log
FILE2=/home/kali/python-server/reverse-shells/sp-hoax/info

if test -f "$FILE1"; then 
        sudo rm /home/kali/python-server/reverse-shells/hoaxshell/py.log 
fi

if 
        test -f "$FILE2"; then sudo rm /home/kali/python-server/reverse-shells/sp-hoax/info 
fi

sudo python3 -m http.server --directory /home/kali/python-server/ 70
