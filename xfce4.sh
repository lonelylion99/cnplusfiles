echo "Ngrok အရင်ဒေါင်းမေ..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip.1 > /dev/null 2>&1
read -p "Ngrok Auth Token ကို paste ထည့်: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3389 &>/dev/null &
echo "__________________________________________"
echo "၂ မိနစ်လောက်စောင့်"
echo "__________________________________________"
sudo apt-get update > /dev/null 2>&1
echo "__________________________________________"
echo "RDP ထည့်နေပီ..."
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "...ပီးပီ"
echo "__________________________________________"
echo "Start RDP"
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "__________________________________________"
echo "ချိတ်လို့ရပီ"
echo "__________________________________________"
sleep 43210
