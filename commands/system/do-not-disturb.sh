#!/bin/bash

# Dependency: This script requires `calm-notifications` cli installed: https://github.com/vitorgalvao/tiny-scripts/blob/master/calm-notifications
# Install via homebrew: `brew install vitorgalvao/tiny-scripts/calm-notifications`

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Do Not Disturb
# @raycast.mode compact
#
# Optional parameters:
# @raycast.icon 🔕
# @raycast.packageName System
# @raycast.argument1 { "type": "text", "placeholder": "command", "optional": true, "percentEncoded": true }
#
# @Documentation:
# @raycast.description Do Not Disturb
# @raycast.author Antonio Dal Sie
# @raycast.authorURL https://github.com/exodusanto

respuesta=$(calm-notifications status)

if [ "$respuesta" == "on" ]; then
  semaforo="off"
else
  semaforo="on"
fi 

calm-notifications $semaforo
sleep 2
echo "Do Not Disturb $(calm-notifications status)"
