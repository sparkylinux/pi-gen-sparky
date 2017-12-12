#!/bin/bash -e

rsync -a skel "${ROOTFS_DIR}/etc/"
cp -a skel/.gtkrc-2.0 "${ROOTFS_DIR}/home/pi/"
cp -a skel/.su-to-rootrc "${ROOTFS_DIR}/home/pi/"
rsync -a skel/.config "${ROOTFS_DIR}/home/pi/"
rsync -a skel/.alsaplayer "${ROOTFS_DIR}/home/pi/"
on_chroot << EOF
chown -R pi:pi /home/pi/.config
chown -R pi:pi /home/pi/.alsaplayer
chown pi:pi /home/pi/.gtkrc-2.0
chown pi:pi /home/pi/.su-to-rootrc
EOF
