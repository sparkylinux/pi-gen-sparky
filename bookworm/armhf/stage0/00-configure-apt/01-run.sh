#!/bin/bash -e

install -m 644 files/sparky.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
#install -m 644 files/sparky ${ROOTFS_DIR}"/etc/apt/preferences.d/"
install -m 644 files/sparky.gpg.key "${ROOTFS_DIR}/usr/share/keyrings/"

# on_chroot apt-key add - < files/sparky.gpg.key
# on_chroot apt-key add - < files/sparkylinux.gpg.key
on_chroot << EOF
apt-get update
apt-get install sparky-keyring -y --allow-unauthenticated
apt-get install sparky-apt --no-install-recommends -y --allow-unauthenticated
apt-get update
EOF
