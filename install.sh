#!/usr/bin/env bash

# Author: Dmitri Popov, dmpop@linux.com
# License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt

dist=$(lsb_release -i | cut -f 2-)

if [ "$dist" == "openSUSE" ]; then
    sudo zypper up
    sudo zypper install -y git jhead dcraw xdpyinfo intltool \
	 nasm libtool xclip bc jq ImageMagick ffmpeg \
	 hugin exiftool libnotify-tools
    sudo zypper install -y -t pattern devel_basis
elif [ "$dist" == "Ubuntu" ] || [ "$dist" == "Debian" ]; then
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get -y install git jhead dcraw xdpyinfo intltool \
	 nasm libtool xclip bc jq imagemagick ffmpeg \
	 hugin libimage-exiftool-perl libnotify-bin
    sudo apt-get install build-essential
else
    echo "Unsupported operating system."
    exit 1
fi

sudo mkdir -p /usr/share/kservices5/ServiceMenus
sudo mkdir -p /usr/share/icons/konbini-icons

git clone https://gitlab.com/dmpop/konbini.git
cd konbini

sudo cp -R icons/*.png /usr/share/icons/konbini-icons/
sudo cp -R desktop/* /usr/share/kservices5/ServiceMenus/
sudo cp -R scripts/* /usr/local/bin/

# Highrise
cd
git clone https://gitlab.com/dmpop/highrise.git
cd highrise
sudo cp highrise.sh /usr/local/bin/highrise

# Set owner and permissions

sudo chown root:root /usr/local/bin/*
sudo chmod 755 /usr/local/bin/*

# jpeg-archive
cd
wget https://github.com/mozilla/mozjpeg/archive/v3.3.1.tar.gz
tar xzfv v3.3.1.tar.gz
cd mozjpeg-3.3.1
cd mozjpeg
autoreconf -fiv
./configure --with-jpeg8
make
sudo make install
cd
git clone https://github.com/danielgtaylor/jpeg-archive.git
cd jpeg-archive
make
sudo make install

echo
echo "========="
echo "All done!"
echo "========="
