define KernelPackage/fs-nilfs2
  SUBMENU:=$(FS_MENU)
  TITLE:=NILFS2 filesystem support
  KCONFIG:=CONFIG_NILFS2_FS \
      CONFIG_KERNEL_POSIX_MQUEUE=y
  FILES:=$(LINUX_DIR)/fs/nilfs2/nilfs2.ko
  AUTOLOAD:=$(call AutoLoad,30,nilfs2,1)
  $(call AddDepends/nls)
endef

$(eval $(call KernelPackage,fs-nilfs2))
