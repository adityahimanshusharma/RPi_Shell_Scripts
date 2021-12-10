#!/bin/bash

echo "Enter GPIO pin to free:"
read pin

echo in > /sys/class/gpio/gpio$pin/direction
sleep 0.01
echo $pin > /sys/class/gpio/unexport

exit
