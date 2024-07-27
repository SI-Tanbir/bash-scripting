 pinging="$(ping -c 3 $1)"
 echo "$pinging"
 
 if [[ $pinging == "100% packet loss" ]]
 then
 	echo "network conection failure "
 	
 else 
 	echo "$1 ip network is conneciting successfully"
 
 fi
