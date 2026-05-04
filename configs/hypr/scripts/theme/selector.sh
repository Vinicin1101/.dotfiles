#!/bin/bash

# Paths
base_dir="$HOME/.config/hypr"
configs_dir="$base_dir/themes"

# Construct a configs path
configs_list=$(ls $configs_dir -I 'selector.sh') || {
  echo "Error: No config found in $configs_dir"
  $(rofi -e "No config found in $configs_dir")
  # exit 1
}


# Rofi #
current_config=$(cat "$HOME/.CURRENT_HYPR_CONFIG")
selected_config=$(echo "* $current_config
$configs_list" | rofi -dmenu -p "Select your hypr config")

if [[ -z "$selected_config" ]]; then
  # No config selected
  exit 1
fi

# Reconstruct the path #
echo $selected_config
selected_path="$configs_dir/$selected_config"

# Save current selection in file
$(echo "$selected_config" > "$HOME/.CURRENT_HYPR_CONFIG")

# Execute the config script #
$(rm "$HOME/.config/hypr/hyprland.conf")
$(ln -s "$selected_path" "$HOME/.config/hypr/hyprland.conf")

hyprctl reload
