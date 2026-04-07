#!/bin/bash

ollama_models=$(ollama list | awk 'NR>1 {print $1}')
selected_model=$(echo "$ollama_models" | rofi -dmenu -p "Select a model to launch ollama")

if [[ -z "$selected_model" ]]; then
  # No theme selected
  exit 1
fi

kitty --class hypr-ollama ollama run $selected_model
exit 0
