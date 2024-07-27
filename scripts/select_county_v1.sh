PS3="Choose your country: "
select COUNTRY in Germany France USA bangla quiting
do  
	case $REPLY in
	1)
		echo "you speak German"
		;;
	2)
		echo "you speak France"
		;;
	3)
		echo "you speak USA"
		;;
	4)
		echo "you speak Bangla"
		;;
	5)
		echo "Quiting ......"
		sleep 1
		exit 1
		;;
	*)
		echo "invalid input $REPLY"
	esac
done
