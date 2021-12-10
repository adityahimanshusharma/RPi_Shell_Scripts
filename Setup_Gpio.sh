#!/bin/bash

echo "Enter GPIO Pin:"
read pin

export_path="/sys/class/gpio/export"
direction="/sys/class/gpio/gpio$pin/direction"
value="/sys/class/gpio/gpio$pin/value"

echo $pin > $export_path
sleep 0.01
echo "out" > $direction
sleep 0.01

for((i=0;i<3;i++))
do
	echo 1 > $value
	sleep 0.1
	echo 0 > $value
	sleep 0.1
done

exit
