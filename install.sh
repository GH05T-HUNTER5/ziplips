#!/usr/bin/bash

if [[ -d /usr/bin ]]; then
	if [ $(id -u) -ne 0 ]; then
		echo "This script must be ran as root"
		exit 1
	fi 
fi

linux="/usr/ziplips"

termux="/data/data/com.termux/files/usr/ziplips"

readthisone() {

	echo ""
	echo "######################################################"
	echo "######################################################"
	echo "##################### READ THIS ######################"
	echo "######################################################"
	echo "######################################################"
	echo "## Dear GitHub user, please do not copy this script ##"
	echo "######################################################"
	echo "##  All copyright under the laws of all countries   ##"
	echo "######################################################"
	echo "##        Copyright of  GH05T HUNTER5, 2024         ##"
	echo "######################################################"
	echo "######################################################"
	
	
	
	echo "#######################################################################################"
	echo "#######################################################################################"
	echo "##   GH05T-INSTA		: 	Zip File BruteForce Tool			   ##"
	echo "##   Authors 		: 	GH05T-HUNTER5				           ##"
	echo "##   Version 		: 	1.0.0			                           ##"
	echo "##   Github 		: 	https://github.com/GH05T-HUNTER5/ziplipw           ##"
	echo "#######################################################################################"
	echo "##  MIT License 				                                           ##"
	echo "##								                   ##"
	echo "##  Copyright (c) 2023 GH05T HUNTER5 						   ##"
	echo "##										   ##"
	echo "##  Permission is hereby granted, free of charge, to any person obtaining a copy     ##"
	echo "##  of this software and associated documentation files (the "Software"), to deal    ##"
	echo "##  in the Software without restriction, including without limitation the rights     ##"
	echo "##  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell        ##"
	echo "##  copies of the Software, and to permit persons to whom the Software is            ##"
	echo "##  furnished to do so, subject to the following conditions:                         ##"
	echo "##                                                                                   ##"
	echo "##  The above copyright notice and this permission notice shall be included in all   ##"
	echo "##  copies or substantial portions of the Software.                                  ##"
	echo "##  										   ##"
	echo "##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR       ##"
	echo "##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,         ##"
	echo "##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE      ##"
	echo "##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER           ##"
	echo "##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,    ##"
	echo "##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE    ##"
	echo "##  SOFTWARE.          								   ##"
	echo "#######################################################################################"
	echo "#######################################################################################"	
}


GREEN='\033[1;32m'
RED='\033[1;31m'
WHITE='\033[1;37m'
CYAN='\033[0;36m'

termux_setup()
{
	if [ $(command -v python) ]; then
		if [ $(command -v ziplip) ]; then
			echo ""
		else
			pip install ziplip
		fi
	else
		pkg install python -y
	fi
	mkdir -p $termux/cookies
}

linux_setup()
{
	if [ $(command -v python3) ]; then
		if [ $(command -v ziplip) ]; then
			echo ""
		else
			pip install ziplip
		fi
	else
		apt install python3
	fi
	mkdir -p $linux/cookies
}

banner()
{
	echo -e "${CYAN}+${WHITE}------------------------------------------------${CYAN}+"
	echo -e "${WHITE}|${GREEN} ███████${RED}╗${GREEN}██${RED}╗${GREEN}██████${RED}╗${GREEN} ██${RED}╗ ${GREEN}    ██${RED}╗${GREEN}██████${RED}╗${GREEN} ███████${RED}╗ ${WHITE}|"
	echo -e "${WHITE}|${RED} ╚══${GREEN}███${RED}╔╝${GREEN}██${RED}║${GREEN}██${RED}╔══${GREEN}██${RED}╗${GREEN}██${RED}║${GREEN}     ██${RED}║${GREEN}██${RED}╔══${GREEN}██${RED}╗${GREEN}██${RED}╔════╝ ${WHITE}|"
	echo -e "${WHITE}|${GREEN}   ███${RED}╔╝${GREEN} ██${RED}║${GREEN}██████${RED}╔╝${GREEN}██${RED}║  ${GREEN}   ██${RED}║${GREEN}██████${RED}╔╝${GREEN}███████${RED}╗ ${WHITE}|"
	echo -e "${WHITE}|${GREEN}  ███${RED}╔╝${GREEN}  ██${RED}║${GREEN}██${RED}╔═══╝${GREEN} ██${RED}║${GREEN}     ██${RED}║${GREEN}██${RED}╔═══╝ ╚════${GREEN}██${RED}║${WHITE} |"
	echo -e "${WHITE}|${GREEN} ███████${RED}╗${GREEN}██${RED}║${GREEN}██${RED}║${GREEN}     ███████${RED}╗${GREEN}██${RED}║${GREEN}██${RED}║${GREEN}     ███████${RED}║${WHITE} |"
	echo -e "${WHITE}|${RED} ╚══════╝╚═╝╚═╝     ╚══════╝╚═╝╚═╝     ╚══════╝ ${WHITE}|"
	echo -e "${CYAN}+${WHITE}----------------${CYAN}{${RED}GH05T-HUNTER5${CYAN}}${WHITE}-----------------${CYAN}+"
	echo -e "${WHITE}|${GREEN} Developer ${CYAN}:${GREEN} GH05T-HUNTER5      Version ${CYAN}: ${GREEN}1.0.0 ${WHITE}|"
	echo -e "${CYAN}+${WHITE}------------------------------------------------${CYAN}+"
	echo -e "${WHITE}| ${GREEN}We strive to provide the best service for you  ${WHITE}|"
	echo -e "${CYAN}+${WHITE}------------------------------------------------${CYAN}+"
}

main()
{
	clear
	banner
	if [[ -d /usr/bin ]]; then
		linux_setup
	elif [[ -d /data/data/com.termux/files/usr ]]; then
		termux_setup
	fi
}

main
