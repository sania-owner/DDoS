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
git clone https://github.com/MHProDev/MHDDoS.git /root/MHProDev
apt install python3-pip
cd MHDDoS
pip install -r requirements.txt

python3 -m pip install tabulate
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git /root/mhddos_proxy

apt-get update
chmod 0777 /root/start.sh












