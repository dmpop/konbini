#!/usr/bin/env bash

# Author: Dmitri Popov, dmpop@tokyoma.de
# License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt

if [ ! -x "$(command -v apt)" ] || [ ! -x "$(command -v zypper)" ] ||
    [ ! -x "$(command -v dolphin)" ] || [ ! -x "$(command -v nemo)" ]; then
    echo "Looks like your system is not supported."
    echo "Konbini uses Zypper or Apt,"
    echo "and it works with the Dolphin and Nemo file managers."
    exit 1
fi

cd

mkdir -p $HOME/bin
git clone https://github.com/dmpop/konbini.git
cd konbini
cp jpeg-recompress $HOME/bin

if [ -x "$(command -v zypper)" ]; then
    sudo zypper up
    sudo zypper install -y git curl jhead bc jq ImageMagick exiftool libnotify-tools
fi

if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt -y install git curl jhead bc jq imagemagick libimage-exiftool-perl libnotify-bin
fi
if [ -x "$(command -v nemo)" ]; then
    chmod +x nemo/*
    mkdir -p $HOME/.local/share/nemo/scripts/Konbini
    cp -R nemo/* $HOME/.local/share/nemo/scripts/Konbini
fi

if [ -x "$(command -v dolphin)" ]; then
    sudo mkdir -p /usr/share/kservices5/ServiceMenus
    sudo cp -R desktop/* /usr/share/kservices5/ServiceMenus/
    chmod +x dolphin/*
    cp -R dolphin/* $HOME/bin/
fi

echo
echo "========="
echo "All done!"
echo "========="
