echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo ""
echo "Initializing....."; 
wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Wallpapers.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Wallpapers.zip -d /home/Cloud/Pictures &> /dev/null
wget -P /home/Cloud/AutoMagic https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons.zip &> /dev/null && unzip /home/Cloud/AutoMagic/Icons.zip -d /home/Cloud/Documents &> /dev/null
echo "Let's start!";
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Movies.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/Movies.desktop
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Google-Drive.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/Google-Drive.desktop
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Chrome.png &> /dev/null  
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/google-chrome.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/google-chrome.desktop
echo "Installing Google Chrome....."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &> /dev/null
sudo dpkg -i google-chrome-stable_current_amd64.deb &> /dev/null

<<cnp
echo "Installing Mozilla Firefox.....";
echo "...downloading"; wget -P /home/Cloud/AutoMagic https://download-installer.cdn.mozilla.net/pub/firefox/releases/92.0/linux-x86_64/en-US/firefox-92.0.tar.bz2  &> /dev/null
echo "...extracting"; mkdir /home/Cloud/Apps &> /dev/null && tar xjf /home/Cloud/AutoMagic/firefox-*.tar.bz2 -C /home/Cloud/Apps  &> /dev/null
echo "...done"; wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Firefox.png &> /dev/null && wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Firefox.desktop &> /dev/null && chmod a+x /home/Cloud/Desktop/Firefox.desktop
echo "Installing Chromium Browser....."; sudo apt install chromium-browser &> /dev/null
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Chromium.png &> /dev/null
echo "...done";
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/chromium-browser.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/chromium-browser.desktop
echo "___________________________________________________________"
cnp

echo "Installing Telegram....."; 
mkdir /home/Cloud/Apps &> /dev/null;
wget --content-disposition --directory-prefix=/home/Cloud/AutoMagic https://github.com/telegramdesktop/tdesktop/releases/download/v3.4.3/tsetup.3.4.3.tar.xz &> /dev/null && tar xf /home/Cloud/AutoMagic/t* -C /home/Cloud/Apps
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/Telegram.desktop &> /dev/null && chmod a+x /home/Cloud/Desktop/Telegram.desktop

echo "Installing LosslessCut....."; 
wget -P /home/Cloud/Apps/LosslessCut https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-linux.AppImage &> /dev/null
chmod a+x /home/Cloud/Apps/LosslessCut/LosslessCut-linux.AppImage &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/LosslessCut.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/LosslessCut.desktop

echo "Installing HandBrake.....";
wget --content-disposition --directory-prefix=/home/Cloud/Apps/HandBrake https://github.com/cmatomic/Handbrake-AppImage/releases/download/continuous/HandBrake-1.1.2.glibc2.17-x86_64.AppImage &> /dev/null
chmod a+x /home/Cloud/Apps/HandBrake/HandBrake-1.1.2.glibc2.17-x86_64.AppImage &> /dev/null
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/HandBrake.png &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/HandBrake.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/HandBrake.desktop

echo "Installing XDM....."; 
wget -P /home/Cloud/AutoMagic https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz &> /dev/null
tar xf /home/Cloud/AutoMagic/xdm* -C /home/Cloud/AutoMagic &> /dev/null && sudo /home/Cloud/AutoMagic/install.sh &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/xdman.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/xdman.desktop

echo "Installing Archive Manager....."; sudo apt-get install file-roller &> /dev/null
sudo apt install unace rar unrar unar p7zip-rar p7zip p7zip-full zip unzip &> /dev/null && sudo apt install uudeview mpack arj cabextract lzip lunzip lzop rzip unalz sharutils &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/file-roller.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/file-roller.desktop

echo "Installing Sublime (Notepad)"; wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &> /dev/null && sudo apt-get install apt-transport-https &> /dev/null && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &> /dev/null && sudo apt-get update &> /dev/null && sudo apt-get install sublime-text &> /dev/null
wget -P /home/Cloud/Documents/Icons https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Icons/Notepad.png &> /dev/null
wget -P /home/Cloud/Desktop https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Shortcuts/sublime_text.desktop &> /dev/null &&  chmod a+x /home/Cloud/Desktop/sublime_text.desktop

echo "Installing Task Manager....."
sudo apt install xfce4-taskmanager &> /dev/null

echo "Cleaning up..."; rm -r /home/Cloud/AutoMagic
echo "Changing Ownerships..."; chown -hvR Cloud /home/Cloud  &> /dev/null
echo "Everthing is ready !!"
echo "
▒█▀▀█ ▒█░░▒█ ▒█▀▀▀ 
▒█▀▀▄ ▒█▄▄▄█ ▒█▀▀▀ 
▒█▄▄█ ░░▒█░░ ▒█▄▄▄"
