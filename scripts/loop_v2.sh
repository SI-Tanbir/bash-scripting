# my target is too rename all the file.. which is starting with .txt 

for files in ./loop_test/* # this dot means current directory 
do
	echo "showing the items of this folders......"
	echo "###################################" #is there any way to show any progressing bar i will see it later
	sleep 1;
	
	if *.txt in $files
	then
		mv $files $files.maggi
		echo "renameing $files into"
		sleep 1;
		echo "$files.maggi
done

