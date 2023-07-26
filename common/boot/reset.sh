#!/bin/bash

echo 511 > /sys/class/gpio/export
echo out > /sys/class/gpio511/direction
echo 1 > /sys/class/gpio511/value
sleep 0.1
echo 0 > /sys/class/gpio511/value


# axu15eg
# set -x
# echo 333 > /sys/class/gpio/export 2> /dev/null
# echo out > /sys/class/gpio/gpio333/direction
# echo 1 > /sys/class/gpio/gpio333/value
# sleep 0.1
# echo 0 > /sys/class/gpio/gpio333/value