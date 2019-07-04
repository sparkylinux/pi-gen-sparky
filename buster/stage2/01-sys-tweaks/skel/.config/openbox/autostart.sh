#! /bin/bash

if [ -f /usr/bin/sparky-polkit ]; then
sparky-polkit &
fi
nitrogen --restore && \
if [ -f /usr/bin/tint2 ]; then
tint2 &
elif [ -f /usr/bin/fbpanel ]; then
fbpanel &
fi
xscreensaver -nosplash &
#(sleep 10; volumeicon) &
(sleep 5; pnmixer) &
thunar --daemon &
if [ -f /opt/sparky/nm-applet-reload ]; then
/opt/sparky/nm-applet-reload &
fi
if [ -f /usr/bin/xdg-user-dirs-update ]; then
/usr/bin/xdg-user-dirs-update &
fi
CHECKPANEL=`pidof tint2`
if [ "$CHECKPANEL" != "" ]; then
if [ -f /etc/xdg/autostart/sparky-pi-mime.desktop ]; then
sudo rm -f /etc/xdg/autostart/sparky-pi-mime.desktop
fi
if [ -f /usr/bin/sparky-pi-mime ]; then
sudo rm -f /usr/bin/sparky-pi-mime
fi
if [ -f /usr/bin/sparky-pi-pswd ]; then
sudo sparky-pi-pswd
sudo rm -f /usr/bin/sparky-pi-pswd
fi
fi
