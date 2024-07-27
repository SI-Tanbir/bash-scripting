#!/usr/bin/bash
echo -n "enter your favourite pet:"
read pet
case "$pet" in
"dog")
	echo "your favourite pet is dog."
	;;
"cat" | "Cat" | "kitty")
	echo "you like cats."
	;;
fish | "african Turtle")
	echo "fish or turtles are great!"
	;;
*)
	echo "your favourite pet is unknown !"
	
esac
