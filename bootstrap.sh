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

echo Installing git . . .
apt-get -q -q update
apt-get -q -q install -y git < /dev/null
echo git installed ...

echo Downloading Yiimp Server Installer v1.0. . .
git clone https://github.com/mivanoski/Pool4U_Yiimp_Setup "$HOME"/yiimpserver/install < /dev/null 2> /dev/null
echo

# Start setup script.
bash $HOME/yiimpserver/install/start.sh
