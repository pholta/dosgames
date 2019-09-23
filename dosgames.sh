#!/bin/bash

#first, install dosbox and unzip (in case they are not yet installed)
#Uncomment based on your distro

#RRP based (Fedora, CentOS, RHEL, ...)
#sudo dnf install dosbox unzip

#deb based (Debian, Ubuntu, Linux Mint, ...)
#sudo apt-get install install dosbox unzip

#create directories
mkdir ~/dos_folder
mkdir ~/dos_folder/games

#download and unzip games from https://www.dosgames.com/
wget https://www.dosgames.com/files/DOSBOX_BLOOD.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_BLOOD.ZIP -d ~/dos_folder/games/BLOOD
wget https://www.dosgames.com/files/DOSBOX_KEEN4.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_KEEN4.ZIP -d ~/dos_folder/games/KEEN4
wget https://www.dosgames.com/files/DOSBOX_TYRIAN.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_TYRIAN.ZIP -d ~/dos_folder/games/TYRIAN
wget https://www.dosgames.com/files/DOSBOX_ARENA.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_ARENA.ZIP -d ~/dos_folder/games/ARENA
wget https://www.dosgames.com/files/DOSBOX_JAZZXMAS1994.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_JAZZXMAS1994.ZIP -d ~/dos_folder/games/JAZZXMAS
wget https://www.dosgames.com/files/DOSBOX_DOOM.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_DOOM.ZIP -d ~/dos_folder/games/DOOM
wget https://www.dosgames.com/files/DOSBOX_DUKE3D.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_DUKE3D.ZIP -d ~/dos_folder/games/DUKE3D
wget https://www.dosgames.com/files/DOSBOX_QUAKE.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_QUAKE.ZIP -d ~/dos_folder/games/QUAKE
wget https://www.dosgames.com/files/DOSBOX_WOLF3D.ZIP -P ~/dos_folder
unzip ~/dos_folder/DOSBOX_WOLF3D.ZIP -d ~/dos_folder/games/WOLF3D

#download and unzip Volkov Commander the source 
wget https://vvv.kiev.ua/download/vc400sw.zip -P ~/dos_folder
unzip ~/dos_folder/vc400sw.zip -d ~/dos_folder/VC

#delete downloaded archives, not needed any more
rm ~/dos_folder/*.*

#start dosbox with with auto mounting game directory and starting Volkov Commander 
dosbox -c "MOUNT c ~/dos_folder" -c "c:" -c "c:\vc\vc.com"

