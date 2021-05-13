iptables -I INPUT -s 172.10.3.4 -j DROP
iptables -I OUTPUT -d 172.10.3.4 -j DROP
iptables -I INPUT -s 172.10.3.5 -j DROP
iptables -I OUTPUT -d 172.10.3.5 -j DROP

iptables -D INPUT -s 172.10.3.4 -j DROP
iptables -D OUTPUT -d 172.10.3.4 -j DROP
iptables -D INPUT -s 172.10.3.5 -j DROP
iptables -D OUTPUT -d 172.10.3.5 -j DROP

iptables -L -v