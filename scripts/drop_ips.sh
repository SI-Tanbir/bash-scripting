#dropping ip address for file name ..ips.txt

for ip in $(cat ips.txt)
do
	echo "Dropping packets from $ip"
	iptables -I INPUT -s $ip -j DROP

done 
