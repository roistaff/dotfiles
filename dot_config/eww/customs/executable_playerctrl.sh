#!/bin/bash
status=$(playerctl status)
case "$1" in
	play-pause)
		if [ "${status}" == "Playing" ];then
			eww update button_text=""
		else
			eww update button_text=""
		fi
		playerctl play-pause
		;;
	next)
		playerctl next
		;;
	previous)
		playerctl previous
		;;
	info)
		;;
	*)
		;;
esac
info1=$(playerctl metadata title)
info2=$(playerctl metadata artist)
eww update info_text="${info1} ${info2}"
