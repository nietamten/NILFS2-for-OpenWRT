#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nilfs-utils
PKG_VERSION:=2.2.9
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/nilfs-dev/nilfs-utils/releases/download/v2.2.9/$(PKG_SOURCE)
PKG_HASH:=914cd9b876b090377504e1184c7b8ca0

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

#PKG_MAINTAINER:=

#PKG_CHECK_FORMAT_SECURITY:=0

include $(INCLUDE_DIR)/package.mk

CONFIGURE_ARGS += \
	--without-selinux \

define Package/nilfs-utils
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Filesystem
  DEPENDS:=+libuuid +libmount +libblkid
  TITLE:=NILFS2 - the new implementation of a log-structured file system
endef


define Package/nilfs-utils/description
  Userland utilities for NILFS2
  NILFS is a log-structured file system developed for Linux. 
  NILFS provides versioning capability of an entire file system and 
  continuous snapshotting that allows users to restore files mistakenly 
  overwritten or destroyed a while ago. 
endef

define Package/nilfs-utils/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/nilfs_cleanerd.conf $(1)/etc	
	
	$(INSTALL_DIR) $(1)/sbin
	$(CP) $(PKG_INSTALL_DIR)/sbin/mkfs.nilfs2 $(1)/sbin/
	$(CP) $(PKG_INSTALL_DIR)/sbin/nilfs_cleanerd $(1)/sbin/
	$(CP) $(PKG_INSTALL_DIR)/sbin/mount.nilfs2 $(1)/sbin/
	$(CP) $(PKG_INSTALL_DIR)/sbin/umount.nilfs2 $(1)/sbin/	
	
	$(INSTALL_DIR) $(1)/usr/bin	
	$(CP) $(PKG_INSTALL_DIR)/usr//bin/chcp $(1)/usr/bin/	
	$(CP) $(PKG_INSTALL_DIR)/usr//bin/dumpseg $(1)/usr/bin/	
	$(CP) $(PKG_INSTALL_DIR)/usr//bin/lscp $(1)/usr/bin/	
	$(CP) $(PKG_INSTALL_DIR)/usr//bin/lssu $(1)/usr/bin/	
	$(CP) $(PKG_INSTALL_DIR)/usr//bin/mkcp $(1)/usr/bin/	
	$(CP) $(PKG_INSTALL_DIR)/usr//bin/rmcp $(1)/usr/bin/	
	
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnilfsgc.so $(1)/usr/lib	
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnilfsgc.so.* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnilfs.so $(1)/usr/lib	
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnilfs.so.* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnilfscleaner.so.* $(1)/usr/lib/
	
	$(INSTALL_DIR) $(1)/usr/sbin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/nilfs-clean $(1)/usr/sbin		
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/nilfs-resize $(1)/usr/sbin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/nilfs-tune $(1)/usr/sbin
endef


$(eval $(call BuildPackage,nilfs-utils))
