#!/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait for 1s untill polybar is fully killed
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch mybar
polybar mybar

echo "Polybar running"
