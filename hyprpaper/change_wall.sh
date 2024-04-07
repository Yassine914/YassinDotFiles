#!/bin/bash

cp -rf ~/Documents/wallpapers ~/dotfiles

echo -e "available walls: "

find ~/dotfiles/wallpapers -type f \( -name "*.png" \) -exec basename -s .png {} \;
find ~/dotfiles/wallpapers -type f \( -name "*.jpg" \) -exec basename -s .jpg {} \;

echo -n "choose wallpaper(name without extension): "
read wall

#killall hyprpaper


if test -f ~/dotfiles/wallpapers/$wall/$wall.png
then
	echo -e "preload = ~/dotfiles/wallpapers/$wall/$wall.png\n
wallpaper = eDP-1, ~/dotfiles/wallpapers/$wall/$wall.png\n
splash = false" > ~/dotfiles/hyprpaper/hyprpaper.conf

elif test -f ~/dotfiles/wallpapers/$wall/$wall.jpg
then
	echo -e "preload = ~/dotfiles/wallpapers/$wall/$wall.jpg\n
wallpaper = eDP-1, ~/dotfiles/wallpapers/$wall/$wall.jpg\n
splash = false" > ~/dotfiles/hyprpaper/hyprpaper.conf
 		 
else
	echo -e "no image by the name of $wall exists."
	exit
fi

echo -e "reload hyprpaper: MainMod + W"
exit
