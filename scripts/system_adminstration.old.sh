PS3="Your choice:" # i don't know PS3 meaning in shell
select ITEM in "ADD USER" "List ALL Processes" "Kill Process" "Install Program" "Quit"
do
	if [[ $REPLY -eq 1 ]]
	then
		read -p "Enter the Username:" username
		output ="$(grep -w $username /etc/passwd)"
		if [[ -n "$output" ]]
		then
			echo "The username already exists"
			
		elif
			sudo useradd -m -s /usr/bin/bash "$username"
			if [[ $? -eq 0 ]]
			then
				echo "The user $username has been added successfully"
				tail -n 1 /etc/passwd
				
			else
				echo "there was error adding the user."
			fi	
		fi
				
	elif [[ $REPLY -eq 2 ]]
	then
		echo "listing all process."
		sleep 1
		ps -ef
	elif [[ $REPLY -eq 3 ]]
	then
		read -p "enter the processs to kill:" process
		pkill $process
		
	elif [[ $REPLY -eq 4 ]]
	then 
		read -p "enter the program to install:" app
		sudo apt update && sudo apt install $app -y
		
	elif [[ $REPLY -eq 5 ]]
	then
		echo "Quitting ..."
		sleep 1
		exit 
	else
		echo "Invalid menu selection."
	
	
	fi
		


done
