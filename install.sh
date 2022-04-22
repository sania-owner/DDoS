#!/bin/bash
sudo apt-get update
apt-get install git -y
mkdir "$HOME"/DDoS
git clone https://github.com/MHProDev/MHDDoS.git "$HOME"/DDoS/MHProDev
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git "$HOME"/DDoS/mhddos_proxy
sudo apt-get install python3-pip -y
cd "$HOME"/DDoS/MHProDev; pip3 install -r requirements.txt
python3 -m pip install tabulate
python3 -m pip install colorama

wget -O "$HOME"/DDoS/auto.sh https://raw.githubusercontent.com/sania-owner/DDoS/main/auto.sh; sudo chmod ugo+x "$HOME"/DDoS/auto.sh
wget -O "$HOME"/DDoS/start.sh https://raw.githubusercontent.com/sania-owner/DDoS/main/start.sh; sudo chmod ugo+x "$HOME"/DDoS/start.sh
wget -O "$HOME"/DDoS/cron.sh https://raw.githubusercontent.com/sania-owner/DDoS/main/cron.sh; sudo chmod ugo+x "$HOME"/DDoS/cron.sh
mv "$HOME"/install.sh "$HOME"/DDoS/install.sh
