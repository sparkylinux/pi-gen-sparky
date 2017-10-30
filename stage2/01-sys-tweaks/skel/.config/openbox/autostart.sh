#! /bin/bash

nitrogen --restore && \
if [ -f /usr/bin/fbpanel ]; then
fbpanel &
elif [ -f /usr/bin/tint2 ]; then
tint2 &
fi
xscreensaver -nosplash &
(sleep 10; volumeicon) &
