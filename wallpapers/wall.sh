#!/bin/bash

if [ -z "$1" ]; then
	echo -e "Usage: wall.sh [WALLPAPER]"
	exit
fi
	
temp=$(basename "$1" .png)
wall=$(basename "$temp" .jpg)

mkdir $wall

if test -f $wall.png; then
	mv $wall.png $wall/$wall.png
	echo -e "color scheme: "
	wal -i $wall/$wall.png -e -n
	cat ~/.cache/wal/colors > $wall/$wall.scheme
	cat ~/.cache/wal/colors.json > $wall/$wall.json

elif test -f $wall.jpg; then
	mv $wall.jpg $wall/$wall.jpg
	echo -e "color scheme: "
	wal -i $wall/$wall.jpg -e -n
	cat ~/.cache/wal/colors > $wall/$wall.scheme
	cat ~/.cache/wal/colors.json > $wall/$wall.json

else
	echo -e "no image exists with this name."
	exit
fi

echo -e "done."
echo -e "new wallpaper: $wall"

cp --update -r ~/Documents/wallpapers ~/dotfiles/

exit
