#/bin/bash

sudo iptables -I INPUT 1 -p tcp --dport 22 -j ACCEPT
sudo iptables -I OUTPUT 1 -p tcp --sport 22 -j ACCEPT
sudo iptables -I INPUT 2 -i lo -j ACCEPT
sudo iptables -I OUTPUT 2 -o lo -j ACCEPT
sudo iptables -I INPUT 3 -j DROP
sudo iptables -I OUTPUT 3 -j DROP

sleep 120

sudo iptables -D INPUT 3
sudo iptables -D OUTPUT 3
sudo iptables -D INPUT 2
sudo iptables -D OUTPUT 2
sudo iptables -D INPUT 1
sudo iptables -D OUTPUT 1

