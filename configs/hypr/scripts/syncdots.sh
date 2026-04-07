#!/bin/bash

# Dots
directories=(
  "clipse"
  "hypr"
  "rofi"
  "swaylock"
  "swaync"
  "wallust"
  "waybar"
  "tschuss"
)

# source & destination
source_base="$HOME/.config"
destination_base="$HOME/repos/.dotfiles/configs"

# If not exists
mkdir -p "$destination_base"

# Sync for each
for dir in "${directories[@]}"; do
  source="$source_base/$dir"
  destination="$destination_base/$dir"
  
  if [ -d "$source" ]; then
    rsync -aL --delete "$source/" "$destination/"
    echo "✔ Synced: $dir"
  else
    echo "❌ Can't find: $dir in $source_base"
  fi
done

echo "Synchronization completed!"
