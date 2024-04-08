#!/bin/bash

dirList=$(ls --hide=*.* --hide=LICENSE)


for dir in $dirList; 
do
	if test -f $dir/$dir.png; then
		wal -i $dir/$dir.png -e -n -s -t -q
		cat ~/.cache/wal/colors > $dir/$dir.scheme
		cat ~/.cache/wal/colors.json > $dir/$dir.json

	elif test -f $dir/$dir.jpg; then
		wal -i $dir/$dir.jpg -e -n -s -t -q
		cat ~/.cache/wal/colors > $dir/$dir.scheme
		cat ~/.cache/wal/colors.json > $dir/$dir.json
		
	fi
done

echo "wallpaper color scheme regeneration complete."

exit
