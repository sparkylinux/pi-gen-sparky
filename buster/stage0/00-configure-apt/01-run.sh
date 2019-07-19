#!/bin/bash -e

install -m 644 files/sparky-stable.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
#install -m 644 files/sparky ${ROOTFS_DIR}"/etc/apt/preferences.d/"

on_chroot apt-key add - < files/sparkylinux.gpg.key
on_chroot << EOF
apt-get update
apt-get install sparky-keyring -y --allow-unauthenticated
apt-get install sparky-apt sparky5-apt -y --allow-unauthenticated
apt-get update
EOF
