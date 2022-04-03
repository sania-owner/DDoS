#!/bin/bash


layer4=1
layer7=2

echo -n "Выберите тип атаки (layer4-цифра 1) или (layer7-цифра 2): "
read layer
echo -n "Количество ядер доступных в системе (цифры от 1 до 16 одним значением): "
read cpu

VAR1=16
Default=1

if [[ $layer -eq $layer4 ]]
then
  if [[ $cpu -le $VAR1 ]]
  then
    echo "Выбрано layer4 и ядер $cpu. Начинаю атаку на орков"
	#./layer4.sh $cpu
	nohup ./layer4.sh $cpu > /dev/null 2>&1 & echo $!
  else
    echo ""
	
	
  fi
else
  if [[ $layer -eq $layer7 ]]
  then
    echo "Выбрано layer7 и ядер $cpu. Начинаю атаку на орков"
	#./layer7.sh $cpu
	nohup ./layer7.sh $cpu > /dev/null 2>&1 & echo $!
  else
    echo "Вы указали неверные значения, используется конфиг по умолчанию: атака layer7 и одно ядро"
	./layer7.sh $Default > /dev/null 2>&1 & echo $!
  fi
fi








