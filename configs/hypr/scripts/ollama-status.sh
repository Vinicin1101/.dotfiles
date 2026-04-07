#!/bin/bash

# Script to display ollama status on Waybay

# Check ollama binary
if ! command -v ollama &> /dev/null; then
  text="Ollama missing"
  alt="Not Installed"
  tooltip="Ollama command not found."
  class="ollama-error"
  percentage=0
  
  echo "{\"text\": \"$text\", \"alt\": \"$alt\", \"tooltip\": \"$tooltip\", \"class\": \"$class\", \"percentage\": $percentage}"
  exit 0
fi

# Check Ollama API
if curl -s -f http://localhost:11434/api/version > /dev/null 2>&1; then
  models=$(ollama ps | awk 'NR>1 {print $1}' | paste -sd ", " -)
  
  if [[ -n "$models" ]]; then
    text="Ollama: $models"
    alt="Running"
    tooltip="API Ollama: Running\nActive Models: $models"
    class="ollama-status"
    percentage=100
  else
    text="Ollama: Idle"
    alt="Idle"
    tooltip="API Ollama: Running\nNo models loadded."
    class="ollama-status"
    percentage=50
  fi
else
  text="Ollama: Offline"
  alt="Not Running"
  tooltip="Ollama API is offline. Check ollama service."
  class="ollama-error"
  percentage=0
fi

printf '{"text": "%s", "alt": "%s", "tooltip": "%s", "class": "%s", "percentage": %d}\n' "$text" "$alt" "$tooltip" "$class" "$percentage"
exit 0
