#!/bin/bash

sudo pkill -9 -f "python3"
rm -rf "$HOME"/DDoS
cd "$HOME"; wget https://raw.githubusercontent.com/sania-owner/DDoS/main/install.sh; sudo chmod ugo+x install.sh; sh ./install.sh

