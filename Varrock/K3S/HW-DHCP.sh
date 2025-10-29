#!/bin/bash
DEVICE=$(ls -1 /sys/class/net | grep ^en)
DEVICE=$(nmcli -t dev|grep ethernet|cut -d':' -f 1)
echo ${DEVICE}
HWADDR=$(python3 -c "import sys,netifaces; print(netifaces.ifaddresses(sys.argv[1])[netifaces.AF_LINK][0]['addr'])" ${DEVICE}) 
echo ${HWADDR}
netplan set renderer=NetworkManager
netplan set version=2
netplan set ethernets.${DEVICE}.dhcp4=false
netplan set bridges.br0.interfaces=[${DEVICE}]
netplan set bridges.br0.macaddress=${HWADDR}
netplan set bridges.br0.dhcp4=true