#!/bin/bash

sleep 5
cat /home/kali/python-server/reverse-shells/hoaxshell/py.log | grep -oP 'powershell -e \K.*(?=[Info])' > /home/kali/python-server/reverse-shells/sp-hoax/info
echo -e "\033[1;33mfinished !\033[1;m"
