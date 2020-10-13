#!/bin/bash
echo "---------------------------"
echo "GPU INFO"
echo "---------------------------"
lspci | grep NVIDIA  # GPU
echo "---------------------------"
echo "Motherboard INFO"
echo "---------------------------"
sudo dmidecode -t 2  # Motherboard
echo "---------------------------"
echo "CPU INFO"
echo "---------------------------"
cat /proc/cpuinfo | grep GHz  # CPU
echo "---------------------------"
echo "HDD/SSD INFO"
echo "---------------------------"
sudo lshw -class disk -class storage  # HDD/SSD
echo "---------------------------"
echo "RAM INFO"
echo "---------------------------"
sudo dmidecode --type 17 | grep "Manufacturer" # RAM
sudo dmidecode --type 17 | grep "Part Number" # RAM
sudo dmidecode --type 17 | grep "Size" # RAM
echo "---------------------------"
