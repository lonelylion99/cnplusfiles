#!/bin/sh
echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo "Enabling Root Access....."; sudo cnplus &> /dev/null
echo "...done"
echo "___________________________________________________________"
echo "Initializing....."; 
wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Wallpapers.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Wallpapers.zip -d /home/Cloud/Pictures &> /dev/null && xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /home/Cloud/Pictures/7.jpg &> /dev/null
wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Icons.zip -d /home/Cloud/Documents &> /dev/null
echo "..let's start!";
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Movies.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/Movies.desktop
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Google-Drive.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/Google-Drive.desktop
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Chrome.png &> /dev/null  
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/google-chrome.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/google-chrome.desktop
echo "___________________________________________________________"
echo "Installing Firefox.....";
echo "...downloading"; wget -P /home/Cloud/AutoMagic https://download-installer.cdn.mozilla.net/pub/firefox/releases/92.0/linux-x86_64/en-US/firefox-92.0.tar.bz2  &> /dev/null
echo "...extracting"; mkdir /home/Cloud/Apps &> /dev/null && tar xjf /home/Cloud/AutoMagic/firefox-*.tar.bz2 -C /home/Cloud/Apps  &> /dev/null
echo "...done"; wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Firefox.png &> /dev/null && wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Firefox.desktop &> /dev/null && chmod a+x /home/Cloud/Desktop/Firefox.desktop
echo "___________________________________________________________"
echo "Installing Chromium Browser....."; sudo apt install chromium-browser &> /dev/null
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Chromium.png &> /dev/null
echo "...done";
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/chromium-browser.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/chromium-browser.desktop
echo "___________________________________________________________"
echo "Installing Telegram....."; 
echo "...downloading"; wget --content-disposition --directory-prefix=/home/Cloud/AutoMagic https://github.com/telegramdesktop/tdesktop/releases/download/v3.0.1/tsetup.3.0.1.tar.xz &> /dev/null 
echo "...extracting"; tar xf /home/Cloud/AutoMagic/t* -C /home/Cloud/Apps 
echo "...done";
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Telegram.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/Telegram.desktop
echo "___________________________________________________________"
echo "Installing LosslessCut....."; 
echo "...downloading"; wget -P /home/Cloud/Apps/LosslessCut https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-linux.AppImage &> /dev/null
echo "...marking as an executable"; chmod a+x /home/Cloud/Apps/LosslessCut/LosslessCut-linux.AppImage &> /dev/null
echo "...done"
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/LosslessCut.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/LosslessCut.desktop
echo "___________________________________________________________"
echo "Installing HandBrake.....";
echo "...downloading"; wget --content-disposition --directory-prefix=/home/Cloud/Apps/HandBrake https://cnplus-storage.herokuapp.com/18 &> /dev/null
echo "...marking as an executable"; chmod a+x /home/Cloud/Apps/HandBrake/HandBrake-1.1.2.glibc2.17-x86_64.AppImage &> /dev/null
echo "...done"
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/HandBrake.png &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/HandBrake.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/HandBrake.desktop
echo "___________________________________________________________"
echo "Installing XDM....."; 
echo "...downloading"; wget -P /home/Cloud/AutoMagic https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz &> /dev/null
echo "...extracting and running installer"; tar xf /home/Cloud/AutoMagic/xdm* -C /home/Cloud/AutoMagic &> /dev/null && sudo /home/Cloud/AutoMagic/install.sh &> /dev/null
echo "...done"
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/xdman.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/xdman.desktop
echo "___________________________________________________________"
echo "Installing Archive Manager....."; sudo apt-get install file-roller &> /dev/null
echo "...installing plugins"; sudo apt install unace rar unrar unar p7zip-rar p7zip p7zip-full zip unzip &> /dev/null && sudo apt install uudeview mpack arj cabextract lzip lunzip lzop rzip unalz sharutils &> /dev/null
echo "...done"; 
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/file-roller.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/file-roller.desktop
echo "___________________________________________________________"
echo "Installing Sublime (Notepad)"; wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &> /dev/null && sudo apt-get install apt-transport-https &> /dev/null && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &> /dev/null && sudo apt-get update &> /dev/null && sudo apt-get install sublime-text &> /dev/null
echo "...done"
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Notepad.png &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/sublime_text.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/sublime_text.desktop
echo "___________________________________________________________"
echo "Cleaning up..."; rm -r /home/Cloud/AutoMagic && rm /home/Cloud/AutoMagic.sh
echo "Everthing is ready !!"
echo "
▒█▀▀█ ▒█░░▒█ ▒█▀▀▀ 
▒█▀▀▄ ▒█▄▄▄█ ▒█▀▀▀ 
▒█▄▄█ ░░▒█░░ ▒█▄▄▄"; sleep 1.5
