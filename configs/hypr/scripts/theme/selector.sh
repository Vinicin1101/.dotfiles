#!/bin/bash

# Construct a themes path
themes_dir="$HOME/.config/waybar/themes"
themes_list=$(ls $themes_dir -I 'selector.sh') || {
  echo "Error: No Themes found in $themes_dir"
  $(rofi -e "No Themes found in $themes_dir")
  # exit 1
}


# Rofi #
current_theme=$(cat "$HOME/.CURRENT_WAYBAR_THEME")
selected_theme=$(echo "* $current_theme
$themes_list" | rofi -dmenu -p "Select your waybar theme")

if [[ -z "$selected_theme" ]]; then
  # No theme selected
  exit 1
fi

# Reconstruct the path #
$selected_theme="${selected_theme//\* /}"
selected_path="$themes_dir/$selected_theme"

# Save current selection in file
$(echo "$selected_theme" > "$HOME/.CURRENT_WAYBAR_THEME")

# Execute the wallpaper script #
$(rm "$HOME/.config/waybar/config")
$(ln -s "$selected_path" "$HOME/.config/waybar/config")
$(pkill waybar)
waybar
