#!/usr/bin/bash
##
umount /dev/sda2
tune2fs -O extents,uninit_bg,dir_index /dev/sda2
e2fsck -pf /dev/sda2
mount /dev/sda2 /home

##
## End of file...
