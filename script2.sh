#! /bin/bash 
rm -r ./hot-folder
mkdir ./hot-folder
for i in $(find . -type d)
do
if [ $i != "./hot-folder" ]; then

	echo "this is the folder: $i"
	for myfile in $i/*;
	do
		if [ -f "$myfile" ]; then
			check=$(grep -ni "apple" "$myfile")
			if [ -z "$check" ]; then
				echo "Empty"
			else
				echo "Found file"
				name_f=$(basename $myfile)
				cp "$myfile" ./hot-folder/"$name_f"
				echo " " >> hot-folder/"$name_f"
				echo "*******" >> hot-folder/"$name_f"
				echo "$check" >> hot-folder/"$name_f"
			fi
		fi
	done
	echo "----------"
	echo " "
fi
done

