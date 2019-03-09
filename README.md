# OpenWRT-NILFS2
Way to patch OpenWRT to enable NILFS2

Beforre building OpenWRT:
- content of fs.mk copy to end of /source/package/kernel/linux/modules/fs.mk 
- directory nilfs2-utils copy to source/package/utils/ 
- after running 'make menuconfig' select module and toolkit for NILFS2 and make sure CONFIG_KERNEL_POSIX_MQUEUE is checked (cleanerd will not work without it)

I'm using it longer without problems to reduce the likelihood of data damage.
Made with the help of the OpenWRT forum.
