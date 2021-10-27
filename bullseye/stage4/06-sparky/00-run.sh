#!/bin/bash -e

on_chroot << EOF
apt-get purge plymouth* -y
EOF


