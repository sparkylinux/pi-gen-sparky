#!/bin/bash -e

install -m 644 files/sources.list "${ROOTFS_DIR}/etc/apt/"
install -m 644 files/raspi.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
install -m 644 files/sparky-stable.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
#install -m 644 files/sparky ${ROOTFS_DIR}"/etc/apt/preferences.d/"

if [ -n "$APT_PROXY" ]; then
	install -m 644 files/51cache "${ROOTFS_DIR}/etc/apt/apt.conf.d/51cache"
	sed "${ROOTFS_DIR}/etc/apt/apt.conf.d/51cache" -i -e "s|APT_PROXY|${APT_PROXY}|"
else
	rm -f "${ROOTFS_DIR}/etc/apt/apt.conf.d/51cache"
fi

on_chroot apt-key add - < files/raspberrypi.gpg.key
on_chroot << EOF
apt-get update
apt-get install sparky-keyring -y --allow-unauthenticated
apt-get install apt-transport-https -y --allow-unauthenticated
apt-get install sparky-apt sparky4-apt -y --allow-unauthenticated
sed -i -e "s|1001|500|g" /etc/apt/preferences.d/sparky
apt-get update
#apt-get dist-upgrade -y --allow-unauthenticated
EOF
