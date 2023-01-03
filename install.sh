#!/usr/bin/env bash

# Author: Dmitri Popov, dmpop@tokyoma.de
# License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt

cd

mkdir -p $HOME/bin
git clone https://github.com/dmpop/konbini.git
cd konbini
cp jpeg-recompress $HOME/bin

if [ ! -z "$(command -v zypper)" ]; then
    sudo zypper up
    sudo zypper install -y git curl bc jq ImageMagick exiftool libnotify-tools
fi

if [ ! -z "$(command -v apt)" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt -y install git curl bc jq imagemagick libimage-exiftool-perl libnotify-bin
fi
if [ ! -z "$(command -v nemo)" ]; then
    chmod +x nemo/*
    mkdir -p $HOME/.local/share/nemo/scripts/Konbini
    cp -R nemo/* $HOME/.local/share/nemo/scripts/Konbini
fi

if [ ! -z "$(command -v dolphin)" ]; then
    sudo mkdir -p /usr/share/kservices5/ServiceMenus
    sudo cp -R desktop/* /usr/share/kservices5/ServiceMenus/
    chmod +x dolphin/*
    cp -R dolphin/* $HOME/bin/
fi

echo
echo "========="
echo "All done!"
echo "========="
