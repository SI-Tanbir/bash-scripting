PS3="Your choice: "
select ITEM in "ADD USER" "List ALL Processes" "Kill Process" "Install Program" "Quit"
do
    case $REPLY in
        1)
            read -p "Enter the Username: " username
            if grep -q -w "^$username:" /etc/passwd; : '-q option: This option makes grep operate quietly. It suppresses output and is typically used when the output of grep is not needed, and only the exit status is of interest.

-w option: This option tells grep to match the pattern as a whole word. So, if $username is "john", it would match lines in /etc/passwd that start with "john" followed by a colon.

"^$username:": This is the pattern being searched for by grep. It consists of:

    ^: Anchors the search pattern to the beginning of the line.
   
    : Matches the colon that typically separates fields in /etc/passwd.'
            then 
                echo "The username already exists."
            else
                sudo useradd -m -s /usr/bin/bash "$username"
                if [[ $? -eq 0 ]];
                 : '$?: it check exit status of the last executed command.if exit status ($?) is equal to 0 than it mean previous command successs.'
                then
                    echo "The user $username has been added successfully."
                    tail -n 1 /etc/passwd
                else
                    echo "There was an error adding the user."
                fi
            fi
            ;;
        2)
            echo "Listing all processes."
            sleep 1
            ps -ef
            ;;
        3)
            read -p "Enter the process to kill: " process
            pkill $process
            ;;
        4)
            read -p "Enter the program to install: " app
            sudo apt update && sudo apt install $app -y
            ;;
        5)
            echo "Quitting ..."
            sleep 1
            exit 
            ;;
        *)
            echo "Invalid menu selection."
            ;;
    esac
done

