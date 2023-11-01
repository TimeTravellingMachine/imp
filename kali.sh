echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/3sPrc9S > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp --region in 3388 &>/dev/null &
echo "===================================="
echo "Install RDP"
echo "===================================="
udocker --root-allow pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support HACKTECHTV CHANNEL thank you"
echo "Wait 2 minute to finish the setup then Run using RDP Address"
echo "===================================="
echo "===================================="
udocker --root-allow run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
