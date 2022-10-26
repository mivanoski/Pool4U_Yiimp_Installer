#!/usr/bin/env bash

######################################################################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox                       #
# Updated by Pool4U for crypto use...                                                                #
# This script is intended to be run like this:                                                       #
#                                                                                                    #
# curl https://raw.githubusercontent.com/mivanoski/Pool4U_Yiimp_Installer/master/bootstrap.sh | bash # 
#                                                                                                    #
######################################################################################################

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
RED=$ESC_SEQ"31;01m"
GREEN=$ESC_SEQ"32;01m"
YELLOW=$ESC_SEQ"33;01m"
BLUE=$ESC_SEQ"34;01m"
MAGENTA=$ESC_SEQ"35;01m"
CYAN=$ESC_SEQ"36;01m"

# Clone the Yiimp Server repository if it doesn't exist.

sudo apt-get install git -y

echo "$CYAN Downloading Yiimp Server Installer v1.0...$COL_RESET"
git clone https://github.com/mivanoski/Pool4U_Yiimp_Setup "$HOME"/yiimpserver/install < /dev/null 2> /dev/null
echo -e "$GREEN Done...$COL_RESET"

# Start install packages

echo -e "$CYAN Installing needed packages for setup to continue...$COL_RESET"
bash $HOME/yiimpserver/install/install_packages.sh
echo -e "$GREEN Done...$COL_RESET"

# Start setup script.
bash $HOME/yiimpserver/install/start.sh
