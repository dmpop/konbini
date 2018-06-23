#!/usr/bin/env bash

sudo zypper install -y git jhead xdpyinfo intltool gtk2-devel nasm libtool xclip bc jq ImageMagick ffmpeg hugin exiftool
sudo zypper install -y -t pattern devel_basis

sudo mkdir -p /usr/share/kservices5/ServiceMenus
sudo mkdir -p /usr/share/icons/konbini-icons

git clone https://gitlab.com/dmpop/konbini.git
cd konbini

sudo cp -R icons/*.png /usr/share/icons/konbini-icons/
sudo cp -R desktop/* /usr/share/kservices5/ServiceMenus/
sudo cp -R scripts/* /usr/local/bin/

# Highrise
cd
git clone https://github.com/dmpop/highrise.git
cd highrise
sudo cp highrise.sh /usr/local/bin/highrise

# Set owner and permissions

sudo chown root:root /usr/local/bin/*
sudo chmod 755 /usr/local/bin/*

# jpeg-archive
cd
git clone https://github.com/mozilla/mozjpeg.git
cd mozjpeg
autoreconf -fiv
./configure --with-jpeg8
make
sudo make install
cd
git clone https://github.com/dmpop/jpeg-archive.git
cd jpeg-archive
make
sudo make install

cd
git clone https://github.com/Jack000/Expose.git
echo "\n alias expose=/home/$USER/Expose/expose.sh" >> .bashrc

curl -sSL https://is.gd/photofunnel | bash
