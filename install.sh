#!/usr/bin/env bash

# Author: Dmitri Popov, dmpop@tokyoma.de
# License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt

mkdir -p $HOME/bin
git clone https://github.com/dmpop/konbini.git
cd konbini
cp jpeg-recompress $HOME/bin

if [ -x "$(command -v zypper)" ]; then
    sudo zypper up
    sudo zypper install -y git jhead xclip bc jq ImageMagick exiftool libnotify-tools
    sudo mkdir -p /usr/share/kservices5/ServiceMenus
    sudo mkdir -p /usr/share/icons/konbini-icons
    sudo cp -R icons/*.png /usr/share/icons/konbini-icons/
    sudo cp -R desktop/* /usr/share/kservices5/ServiceMenus/
    chmod +x dolphin/*
    cp -R dolphin/* $HOME/bin/
elif [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt -y install git jhead bc jq imagemagick libimage-exiftool-perl libnotify-bin
    chmod +x nemo/*
    mkdir -p $HOME/.local/share/nemo/scripts/Konbini
    cp -R nemo/* $HOME/.local/share/nemo/scripts/Konbini
else
    echo "Unsupported operating system."
    exit 1
fi

echo
echo "========="
echo "All done!"
echo "========="
