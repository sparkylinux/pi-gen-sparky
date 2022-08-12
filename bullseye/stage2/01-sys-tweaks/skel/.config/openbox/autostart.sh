#! /bin/bash

if [ -f /usr/bin/sparky-polkit ]; then
sparky-polkit &
fi
if [ -f /usr/bin/nitrogen ]; then
nitrogen --restore &
fi
if [ -f /usr/bin/tint2 ]; then
tint2 &
elif [ -f /usr/bin/fbpanel ]; then
fbpanel &
fi
if [ -f /usr/bin/xscreensaver ]; then
xscreensaver -nosplash &
fi
#(sleep 10; volumeicon) &
if [ -f /usr/bin/pnmixer ]; then
(sleep 5; pnmixer) &
fi
if [ -f /opt/sparky/nm-applet-reload ]; then
/opt/sparky/nm-applet-reload &
fi
if [ -f /usr/bin/xdg-user-dirs-update ]; then
/usr/bin/xdg-user-dirs-update &
fi
