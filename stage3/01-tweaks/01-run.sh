#!/bin/bash -e

if [ -f "${ROOTFS_DIR}/usr/share/applications/pcmanfm-desktop-pref.desktop" ]; then
	rm -f ${ROOTFS_DIR}/usr/share/applications/pcmanfm-desktop-pref.desktop
fi
install -m 644 files/pcmanfm-desktop-pref.desktop				${ROOTFS_DIR}/usr/share/applications/

if [ -f "${ROOTFS_DIR}/etc/lightdm/lightdm.conf" ]; then
	rm -f ${ROOTFS_DIR}/etc/lightdm/lightdm.conf
fi
install -m 644 files/lightdm.conf				${ROOTFS_DIR}/etc/lightdm/
