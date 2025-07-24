#!/bin/bash

# Kill existing bars
killall -q polybar

# Wait until polybar is fully shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch main bar
polybar main &