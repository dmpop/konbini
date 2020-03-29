#!/usr/bin/env bash

# Author: Dmitri Popov, dmpop@linux.com
# License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt

mkdir -p $HOME/bin
git clone https://gitlab.com/dmpop/konbini.git
cd konbini
mv jpeg-recompress $HOME/bin

dist=$(lsb_release -i | cut -f 2)

if [ "$dist" == "openSUSE" ]; then
    sudo zypper up
    sudo zypper install -y git jhead dcraw xclip bc jq ImageMagick exiftool libnotify-tools
    sudo mkdir -p /usr/share/kservices5/ServiceMenus
    sudo mkdir -p /usr/share/icons/konbini-icons
    sudo cp -R icons/*.png /usr/share/icons/konbini-icons/
    sudo cp -R desktop/* /usr/share/kservices5/ServiceMenus/
    cp -R dolphin/* $HOME/bin/
elif [ "$dist" == "Ubuntu" ]; then
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get -y install git jhead dcraw xclip bc jq imagemagick libimage-exiftool-perl libnotify-bin
    mkdir -p $HOME/.local/share/nautilus/scripts/Konbini
    cp nautilus/* $HOME/.local/share/nautilus/scripts/Konbini
else
    echo "Unsupported operating system."
    exit 1
fi

echo
echo "========="
echo "All done!"
echo "========="
