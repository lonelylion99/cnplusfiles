echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo ""
echo ""
echo "Installing essential softwares..."

echo "- Archive Manager"
sudo apt install engrampa &> /dev/null
sudo apt-get install -y thunar-archive-plugin &> /dev/null

echo "- Task Manager"
sudo apt install xfce4-taskmanager &> /dev/null

echo "- XDM"; 
wget -P /home/Cloud/AutoMagic https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz &> /dev/null
tar xf /home/Cloud/AutoMagic/xdm* -C /home/Cloud/AutoMagic &> /dev/null && sudo /home/Cloud/AutoMagic/install.sh &> /dev/null

echo "- LosslessCut"; 
wget -P /home/Cloud/Apps/LosslessCut https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-linux.AppImage &> /dev/null
chmod a+x /home/Cloud/Apps/LosslessCut/LosslessCut-linux.AppImage &> /dev/null

echo "- Telegram"; 
mkdir /home/Cloud/Apps &> /dev/null;
wget --content-disposition --directory-prefix=/home/Cloud/AutoMagic https://github.com/telegramdesktop/tdesktop/releases/download/v3.4.3/tsetup.3.4.3.tar.xz &> /dev/null && tar xf /home/Cloud/AutoMagic/t* -C /home/Cloud/Apps
timeout 3s /home/Cloud/Apps/Telegram/Telegram &> /dev/null

echo ""
echo "Styling desktop..."
sudo apt install xfce4-whiskermenu-plugin &> /dev/null
sudo apt install arc-theme &> /dev/null
wget -P "/home/Cloud/" https://storage.channelplus.workers.dev/0:/!MISC/RDP/My.RDP.Backup.tar.gz &> /dev/null
tar xf /home/Cloud/My.RDP.Backup.tar.gz -C "/home/Cloud/" &> /dev/null
rm /home/Cloud/My.RDP.Backup.tar.gz &> /dev/null
sudo apt install fonts-roboto &> /dev/null
mkdir /home/Cloud/.fonts &> /dev/null
wget https://fonts.google.com/download?family=Roboto%20Mono &> /dev/null
unzip Roboto_Mono.zip -d /home/Cloud/.fonts/ &> /dev/null
echo ""
echo ""
echo "Mounting Channel+ Storage"
curl https://rclone.org/install.sh | sudo bash &> /dev/null
mkdir "/home/Cloud/Channel+ Storage" &> /dev/null
wget -O rclone.conf https://storage.channelplus.workers.dev/0:/!MISC/RDP/ngrok.sh &> /dev/null
mv rclone.conf /home/Cloud/.config/rclone/rclone.conf &> /dev/null
rclone mount --daemon cnplus: "/home/Cloud/Channel+ Storage" &> /dev/null
echo ""
echo ""
echo "Cleaning up..."; 
rm -r /home/Cloud/AutoMagic
chown -hvR Cloud /home/Cloud  &> /dev/null
echo ""
echo "Finished!"
echo ""
echo "
▒█▀▀█ ▒█░░▒█ ▒█▀▀▀ 
▒█▀▀▄ ▒█▄▄▄█ ▒█▀▀▀ 
▒█▄▄█ ░░▒█░░ ▒█▄▄▄"
