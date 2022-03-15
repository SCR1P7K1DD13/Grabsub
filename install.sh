#!/bin/bash
BLUE='\033[94m'

RED='\033[91m'

GREEN='\033[92m'

ORANGE='\033[93m'

RESET='\e[0m'

status="install ok installed"

if [ -d "recon"  ]
then 
   echo "" 
elif [ ! -d "recon" ]
then
   sudo mkdir recon
fi

if [ -d "tools"  ]
then 
   echo "" 
elif [ ! -d "tools" ]
then
   sudo mkdir tools
fi
status="install ok installed"

go=$(go= dpkg-query -W --showformat='${Status}\n' golang-go | grep "install ok installed")

if [ "$status" = "$go" ];then
   echo -e "$GREEN [+]go - requirement already satisfied $RESET"
   echo -e "$ORANGE Checking for version details $RESET"
   go=$(dpkg-query --showformat='${Version}' --show golang-go | awk -F[:,~] '{print $2}') 
   version="1.17"
   compare=`echo | awk "{ print ($version <= $go)?1 : 0 }"`
   
	if [ "$compare" -eq "1" ];then
		echo -e "$GREEN golang-go is already the newest version $RESET" 
	else
		echo "Checking for updates ......"
		sudo apt install golang-go
	fi
   
else
    sudo apt install golang-go
fi

jq=$(dpkg-query -W --showformat='${Status}\n' jq | grep "install ok installed")
if [ "$status" == "$jq" ]; then
    echo -e "$GREEN [+]jq - requirement already satisfied $RESET"
else
    sudo apt install jq
fi

sublister=$(dpkg-query -W --showformat='${Status}\n' sublist3r | grep "install ok installed")
if [ "$status" == "$sublister" ]; then
    echo -e "$GREEN [+]sublist3r - requirement already satisfied $RESET"
else
    sudo apt install sublist3r
    sudo ln -s /usr/bin/python3 /usr/bin/python
fi

sudo mkdir tools/httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
cp $HOME/go/bin/httpx tools/httpx/
chmod +x tools/httpx/httpx

sudo mkdir tools/subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
cp $HOME/go/bin/subfinder tools/subfinder/
chmod +x tools/subfinder/subfinder

sudo mkdir tools/assetfinder
go install -v github.com/tomnomnom/assetfinder@latest
cp $HOME/go/bin/assetfinder tools/assetfinder/
chmod +x tools/assetfinder/assetfinder
