#!/bin/bash -e

if [ -f "${ROOTFS_DIR}/usr/share/applications/pcmanfm-desktop-pref.desktop" ]; then
	echo "NoDisplay=true" >> ${ROOTFS_DIR}/usr/share/applications/pcmanfm-desktop-pref.desktop
fi
#install -m 644 files/pcmanfm-desktop-pref.desktop				${ROOTFS_DIR}/usr/share/applications/

#if [ -f "${ROOTFS_DIR}/etc/lightdm/lightdm.conf" ]; then
#	rm -f ${ROOTFS_DIR}/etc/lightdm/lightdm.conf
#fi
#install -m 644 files/lightdm.conf				${ROOTFS_DIR}/etc/lightdm/

#if [ -f "${ROOTFS_DIR}/etc/lightdm/lightdm-gtk-greeter.conf" ]; then
#	sed -i -e 's|#background=|background=/opt/artwork/sparky-lightdm.svg|g' ${ROOTFS_DIR}/etc/lightdm/lightdm-gtk-greeter.conf
#fi

if [ -f "${ROOTFS_DIR}/etc/wpa_supplicant/wpa_supplicant.conf" ]; then
	rm -f ${ROOTFS_DIR}/etc/wpa_supplicant/wpa_supplicant.conf
fi

#if [ -f "${ROOTFS_DIR}/etc/network/interfaces" ]; then
#	rm -f ${ROOTFS_DIR}/etc/network/interfaces
#fi

if [ -f "${ROOTFS_DIR}/usr/share/applications/vim.desktop" ]; then
	echo "NoDisplay=true" >> ${ROOTFS_DIR}/usr/share/applications/vim.desktop
fi

if [ -f "${ROOTFS_DIR}/usr/share/applications/htop.desktop" ]; then
	echo "NoDisplay=true" >> ${ROOTFS_DIR}/usr/share/applications/htop.desktop
fi
