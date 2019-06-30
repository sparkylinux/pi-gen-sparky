#!/bin/bash -e

rsync -a skel "${ROOTFS_DIR}/etc/"
cp -a skel/.gtkrc-2.0 "${ROOTFS_DIR}/home/pi/"
cp -a skel/.su-to-rootrc "${ROOTFS_DIR}/home/pi/"
rsync -a skel/.config "${ROOTFS_DIR}/home/pi/"
rsync -a skel/.alsaplayer "${ROOTFS_DIR}/home/pi/"
cp -a files1/sparky-pi-mime "${ROOTFS_DIR}/usr/bin/"
cp -a files1/sparky-pi-mime.desktop "${ROOTFS_DIR}/etc/xdg/autostart/"
on_chroot << EOF
chmod +x /etc/skel/.config/openbox/autostart.sh
chown -R root:root /etc/skel
chown -R pi:pi /home/pi/.config
chown -R pi:pi /home/pi/.alsaplayer
chown pi:pi /home/pi/.gtkrc-2.0
chown pi:pi /home/pi/.su-to-rootrc
chmod +x /home/pi/.config/openbox/autostart.sh
chmod 755 /home/pi/.config
chmod +x /usr/bin/sparky-pi-mime
EOF