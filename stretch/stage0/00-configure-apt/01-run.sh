#!/bin/bash -e

install -m 644 files/sparky.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

on_chroot apt-key add - < files/sparky.gpg.key
on_chroot apt-key add - < files/sparkylinux.gpg.key
on_chroot << EOF
apt-get update
apt-get install sparky-keyring -y --allow-unauthenticated
#apt-get install apt-transport-https -y --allow-unauthenticated
apt-get install sparky-apt sparky4-apt -y --allow-unauthenticated
sed -i -e "s|1001|500|g" /etc/apt/preferences.d/sparky
EOF
