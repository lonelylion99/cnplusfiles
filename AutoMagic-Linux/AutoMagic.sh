#!/bin/sh
echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo "Enabling Root Access....."; sudo cnplus &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Downloading Wallpapers....."; wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Wallpapers.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Wallpapers.zip -d /home/Cloud/Pictures &> /dev/null && xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /home/Cloud/Pictures/5.jpeg &> /dev/null
echo "..done"
echo "___________________________________________________________"
echo "Installing Telegram....."; 
echo "...downloading"; wget --content-disposition --directory-prefix=/home/Cloud/AutoMagic https://telegram.org/dl/desktop/linux &> /dev/null 
echo "...extracting"; mkdir /home/Cloud/Apps &> /dev/null && tar xf /home/Cloud/AutoMagic/t* -C /home/Cloud/Apps 
echo "...done";
echo "___________________________________________________________"
echo "Installing LosslessCut....."; 
echo "...downloading"; wget -P /home/Cloud/Apps/LosslessCut https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-linux.AppImage &> /dev/null
echo "...marking as an executable"; chmod a+x /home/Cloud/Apps/LosslessCut/LosslessCut-linux.AppImage &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Installing HandBrake.....";
echo "...downloading"; wget --content-disposition --directory-prefix=/home/Cloud/Apps/HandBrake https://cnplus-storage.herokuapp.com/18 &> /dev/null
echo "...marking as an executable"; chmod a+x /home/Cloud/Apps/HandBrake/HandBrake-1.1.2.glibc2.17-x86_64.AppImage &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Installing XDM....."; 
echo "...downloading"; wget -P /home/Cloud/AutoMagic https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz &> /dev/null
echo "...extracting and running installer"; tar xf /home/Cloud/AutoMagic/xdm* -C /home/Cloud/AutoMagic &> /dev/null && sudo /home/Cloud/AutoMagic/install.sh &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Installing Archive Manager....."; sudo apt-get install file-roller &> /dev/null
echo "...installing plugins"; sudo apt install unace rar unrar unar p7zip-rar p7zip p7zip-full zip unzip &> /dev/null && sudo apt install uudeview mpack arj cabextract lzip lunzip lzop rzip unalz sharutils &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Installing Sublime (Notepad)"; wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &> /dev/null && sudo apt-get install apt-transport-https &> /dev/null && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &> /dev/null && sudo apt-get update &> /dev/null && sudo apt-get install sublime-text &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Downloading Icons....."; wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Icons.zip -d /home/Cloud/Documents &> /dev/null
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/HandBrake.png &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Creating Shortcuts...."; 
wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts.zip &> /dev/null
unzip /home/Cloud/AutoMagic/Shortcuts.zip -d /home/Cloud/Desktop &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/HandBrake.desktop &> /dev/null
xfdesktop --reload  &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Cleaning up..."; rm -r /home/Cloud/AutoMagic && rm /home/Cloud/AutoMagic.sh
echo "Everthing is ready !!"
echo "
▒█▀▀█ ▒█░░▒█ ▒█▀▀▀ 
▒█▀▀▄ ▒█▄▄▄█ ▒█▀▀▀ 
▒█▄▄█ ░░▒█░░ ▒█▄▄▄"; sleep 1.5
