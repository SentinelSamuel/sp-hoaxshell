#!/bin/bash

sleep 5
cat ../hoaxshell/py.log | grep -oP 'powershell -e \K.*(?=[Info])' > ./info
echo -e "\033[1;33mfinished !\033[1;m"
