#! /bin/bash

mkdir ./hot-folder

for i in *;
do
	if [ -f "$i" ]; then
		linenum=$(grep -ni "apple" $i)
		if [ -z "$linenum" ]; then
			echo "Empty"
		else
			echo "found an apple"
			cp "$i" ./hot-folder
			echo " " >> hot-folder/"$i"
			echo "$linenum" >> hot-folder/"$i"
		fi
	else
	       	echo "$i is not a file"	
	fi
done
 
*******
8:		linenum=$(grep -ni "apple" $i)
12:			echo "found an apple"
