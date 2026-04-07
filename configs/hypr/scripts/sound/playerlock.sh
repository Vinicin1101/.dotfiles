#!/bin/bash

convert_clean() {
    src="$1"
    dst="/tmp/cover_clean.png"

    # converte e valida
    if convert "$src" "$dst" 2>/dev/null; then
        echo "$dst"
    else
        echo "/usr/share/icons/Adwaita/32x32/devices/media-optical.png"
    fi
}

# Check music status
music_status() {
    player_status=$(playerctl status 2>/dev/null)

    case $player_status in
	Stopped)
		echo "false $player_status"
	;;
	Paused)
		echo "true  $player_status"
	;;
	Playing)
		echo "true  $player_status"
		;;
    	*)
		echo "false"
    esac
}

escape_string() {
	escaped=${$1//\"/\'}
	echo "$escaped"
}

get_song_art() {
	art=$(playerctl metadata | grep 'firefox mpris:artUrl' | awk '{print $3}')
	convert_clean "$art"
	echo "${art/file\:\/\//}"
}

while [ $# -gt 0 ] ; do

    # Music status
    read -r isRunning icon musicStatus <<< $(music_status) 
	
    if [ $isRunning != true  ]; then
   	exit 0 
    fi

	case "$1" in
		-art)
			read -r song_art <<< $(get_song_art)
			echo "$song_art"
	        ;;
		-metadata)
			title=$(playerctl metadata title)
			album=$(playerctl metadata album)
			artist=$(playerctl metadata artist)
			echo "$icon  $title - $album\n󰠃  $artist"
		;;
		*)
	        	echo "Error: Unknown option: $1\n Try: -mute or -status"
			exit 1
	esac

	shift
done
