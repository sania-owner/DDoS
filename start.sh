#!/bin/bash

echo -n "Количество ядер доступных в системе (цифры от 1 до 32 одним значением): "
read cpu

VAR1=32
Default=1

if [[ $cpu -le $VAR1 ]]
then
    echo "Выбрано ядер $cpu. Начинаю атаку на орков"
	#./auto.sh $cpu
	nohup ./auto.sh $cpu > /dev/null 2>&1 & echo $!
  else
    echo "Вы указали неверные значения, используется конфиг по умолчанию: одно ядро. Начинаю атаку на орков"
	nohup ./auto.sh $Default > /dev/null 2>&1 & echo $!
fi
