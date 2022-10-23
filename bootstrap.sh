#!/usr/bin/env bash

######################################################################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox                       #
# Updated by Pool4U for crypto use...                                                                #
# This script is intended to be run like this:                                                       #
#                                                                                                    #
# curl https://raw.githubusercontent.com/mivanoski/Pool4U_Yiimp_Installer/master/bootstrap.sh | bash # 
#                                                                                                    #
######################################################################################################


# Clone the Yiimp Server repository if it doesn't exist.

#echo Installing git ...
# apt-get -q -q update
# sudo apt install git -y
#echo git installed ...
sudo apt install git -y
sudo apt install landscape-common -y
sudo apt install nano -y

echo Downloading Yiimp Server Installer v1.0. . .
git clone https://github.com/mivanoski/Pool4U_Yiimp_Setup "$HOME"/yiimpserver/install < /dev/null 2> /dev/null
echo

nano $HOME/yiimpserver/install/settings.conf

# Start setup script.
bash $HOME/yiimpserver/install/start.sh
