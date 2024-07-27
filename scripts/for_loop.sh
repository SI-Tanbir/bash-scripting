numbers="3,5,9,10,68"
for n in $(echo $numbers );
do 
	echo -n "$n"; #prints the value of n without a trailing newline
	
done
