if [[ $# -ne 2 ]] # number of argument is save on $# varuable
then
	echo "Run the script with 2 argument :signal and PID ."
	exit 1	#  return status of script
	
fi

case "$1" in 
1)
	echo "sending the SIGUP signal to $2"
	kill -SIGHUP $2 
	;;
	
2)
	echo "Sending the SIGINT signal to $2"
	kill -SIGINT $2 
	;;
15)
	echo "Sending the SIGTERM signal to $2"
	kill -SIGTERM $2 
	;;
*)
	echo "signal no $1 will not be delivered"
	;; 	
esac
