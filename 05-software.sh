#!/bin/bash

# useful system stuff
pacman -S sudo bash-completion git
EDITOR=nano visudo

# yaourt
mkdir /tmp/yaourtsetup
cd /tmp/yaourtsetup
git clone https://aur.archlinux.org/package-query.git
chmod -R 777 package-query
cd package-query
sudo -u nobody makepkg -sri
cd ..
rm -rf package-query
git clone https://aur.archlinux.org/yaourt.git
chmod -R 777 yaourt
cd yaourt
sudo -u nobody makepkg -si
cd
rm -rf /tmp/yaourtsetup

# xorg
pacman -S xorg-server xorg-server-utils xf86-video-intel xf86-input-synaptics

# desktop
pacman -S openbox obconf lxappearance-obconf-gtk3 compton tint2