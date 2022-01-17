echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo ""
echo ""
echo "Installing essential softwares..."

echo "- Archive Manager"
sudo apt install engrampa
sudo apt-get install -y thunar-archive-plugin

echo "- Task Manager"
sudo apt install xfce4-taskmanager &> /dev/null

echo "- Telegram"; 
mkdir /home/Cloud/Apps &> /dev/null;
wget --content-disposition --directory-prefix=/home/Cloud/AutoMagic https://github.com/telegramdesktop/tdesktop/releases/download/v3.4.3/tsetup.3.4.3.tar.xz &> /dev/null && tar xf /home/Cloud/AutoMagic/t* -C /home/Cloud/Apps
timeout 3s /home/Cloud/Apps/Telegram/Telegram

echo "- XDM"; 
wget -P /home/Cloud/AutoMagic https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz &> /dev/null
tar xf /home/Cloud/AutoMagic/xdm* -C /home/Cloud/AutoMagic &> /dev/null && sudo /home/Cloud/AutoMagic/install.sh &> /dev/null

echo "- LosslessCut"; 
wget -P /home/Cloud/Apps/LosslessCut https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-linux.AppImage &> /dev/null
chmod a+x /home/Cloud/Apps/LosslessCut/LosslessCut-linux.AppImage &> /dev/null

echo ""
echo "Styling desktop..."
sudo apt install xfce4-whiskermenu-plugin &> /dev/null
sudo apt install arc-theme &> /dev/null
wget https://storage.channelplus.workers.dev/0:/!MISC/RDP/Colab.RDP.Backup.tar.gz &> /dev/null
tar xf My.RDP.Backup.tar.gz &> /dev/null
rm My.RDP.Backup.tar.gz
echo ""
echo "Mounting Channel+ Storage"
curl https://rclone.org/install.sh | sudo bash &> /dev/null
mkdir "/home/Cloud/Channel+ Storage" &> /dev/null
wget --header 'Authorization: token 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' raw.githubusercontent.com/lonelylion99/cnplus/main/Google%20Cloud%20Shell/rclone.conf &> /dev/null
mv rclone.conf /home/Cloud/.config/rclone/rclone.conf &> /dev/null
rclone mount --daemon cnplus: "/home/Cloud/Channel+ Storage" &> /dev/null
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
