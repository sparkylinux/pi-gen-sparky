#!/bin/bash -e

on_chroot << EOF
apt-get update
apt-get -y dist-upgrade
apt-get clean
if [ -f /usr/share/mime/mime.cache ]; then
rm -f /usr/share/mime/mime.cache
fi

EOF
