#! /bin/sh
cd /home/open5g/UERANSIM/build/
./nr-ue -c ../config/open5gs-ue.yaml -i 901700000000001 &
sleep 10
ip route add 0.0.0.0/dev uesimtun0