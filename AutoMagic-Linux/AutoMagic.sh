#!/bin/sh
echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo "Enabling Root Access..."; sudo cnplus &> /dev/null
echo "Done!"
echo "___________________________________________________________"
echo "Downloading Wallpapers..."; wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Wallpapers.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Wallpapers.zip -d /home/Cloud/Pictures &> /dev/null && xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /home/Cloud/Pictures/5.jpeg &> /dev/null
echo "..Done.."
echo "___________________________________________________________"
echo "Installing Telegram....."; wget -P /home/Cloud/AutoMagic https://updates.tdesktop.com/tlinux/tsetup.2.9.2.tar.xz &> /dev/null && mkdir /home/Cloud/Apps &> /dev/null && tar xf /home/Cloud/AutoMagic/t* -C /home/Cloud/Apps 
echo "..Done..";
echo "___________________________________________________________"
echo "Installing LosslessCut....."; wget -P /home/Cloud/Apps/LosslessCut https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-linux.AppImage &> /dev/null && chmod a+x /home/Cloud/Apps/LosslessCut/LosslessCut-linux.AppImage &> /dev/null
echo "..Done.."
echo "___________________________________________________________"
echo "Installing XDM....."; wget -P /home/Cloud/AutoMagic https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz &> /dev/null && tar xf /home/Cloud/AutoMagic/xdm* -C /home/Cloud/AutoMagic &> /dev/null && sudo /home/Cloud/AutoMagic/install.sh &> /dev/null
echo "..Done.."
echo "___________________________________________________________"
echo "Installing Archive Manager....."; sudo apt-get install file-roller &> /dev/null && sudo apt install unace rar unrar unar p7zip-rar p7zip p7zip-full zip unzip &> /dev/null && sudo apt install uudeview mpack arj cabextract lzip lunzip lzop rzip unalz sharutils &> /dev/null
echo "..Done.."
echo "___________________________________________________________"
echo "Installing Sublime (Notepad)"; wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &> /dev/null && sudo apt-get install apt-transport-https &> /dev/null && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &> /dev/null && sudo apt-get update &> /dev/null && sudo apt-get install sublime-text &> /dev/null
echo "..Done.."
echo "___________________________________________________________"
echo "Downloading Icons....."; wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Icons.zip -d /home/Cloud/Documents &> /dev/null
echo "Done!..Done.."
echo "___________________________________________________________"
echo "Creating Shortcuts...."; wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Shortcuts.zip -d /home/Cloud/Desktop &> /dev/null
echo "..Done.."
echo "___________________________________________________________"
echo "Cleaning up..."; rm -r /home/Cloud/AutoMagic && rm /home/Cloud/AutoMagic.sh
echo "Everything is done !"
echo "___________________________________________________________"
