!/bin/bash

#############################
#    KETABMaR Controller    #
#       KETABMaR Ltd.       #
#    ketabmar.github.io     #
#############################

clear

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit 1
fi

cat <<'FIG'
 _   __ _____ _____ ___  _________  ___     ______ 
| | / /|  ___|_   _/ _ \ | ___ \  \/  |     | ___ \
| |/ / | |__   | |/ /_\ \| |_/ / .  . | __ _| |_/ /
|    \ |  __|  | ||  _  || ___ \ |\/| |/ _` |    / 
| |\  \| |___  | || | | || |_/ / |  | | (_| | |\ \ 
\_| \_/\____/  \_/\_| |_/\____/\_|  |_/\__,_\_| \_|
                                                   
FIG

echo "Operating System: $OSTYPE"

read -p "Enter what you want to do: 1)Install KETABMaR Files 2) Dump Database 3)" option
if [["$option" == "" ]]; then
	echo "Please input what you want to do... Exiting script..."
	exit 127
fi
if [["$option" == "1"]]; then
	echo "Installing KETABMaR files..."
	installFiles
fi
if [["$option" == "2"]]; then
	echo "Dumping Database..."
	dumpDB
fi

installFiles() {
	apt-get update
	apt-get upgrade
}

dumpDB() {
	
}
