#!/bin/bash

# Paths
base_dir="$HOME/.config/waybar"
configs_dir="$base_dir/configs"
styles_dir="$base_dir/style"

# Construct a configs path
configs_list=$(ls $configs_dir -I 'selector.sh') || {
  echo "Error: No config found in $configs_dir"
  $(rofi -e "No config found in $configs_dir")
  # exit 1
}


# Rofi #
current_config=$(cat "$HOME/.CURRENT_WAYBAR_CONFIG")
selected_config=$(echo "* $current_config
$configs_list" | rofi -dmenu -p "Select your waybar config")

if [[ -z "$selected_config" ]]; then
  # No config selected
  exit 1
fi

# Reconstruct the path #
$selected_config="${selected_config//\* /}"
selected_path="$configs_dir/$selected_config"

# Save current selection in file
$(echo "$selected_config" > "$HOME/.CURRENT_WAYBAR_CONFIG")

# Execute the config script #
$(rm "$HOME/.config/waybar/config")
$(ln -s "$selected_path" "$HOME/.config/waybar/config")

# Config Style if exist #
selected_path_style="$styles_dir/$selected_config.css"

if [[ -f "$selected_path_style" ]]; then
    rm "$base_dir/style.css"
    ln -s "$selected_path_style" "$base_dir/style.css"
    echo "Estilo atualizado para $selected_config.css"
else
    echo "Nenhum estilo específico encontrado. Mantendo o estilo atual."
fi

$(pkill waybar)
waybar & 
