#!/bin/zsh

# Terminate already running bar instant
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
polybar bar1 >>/tmp/polybar1.log 2>&1 & disown

echo "Bars launched..."
