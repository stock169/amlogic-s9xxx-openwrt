cd /mnt/mmcblk0p7
rm -rf !(extlinux)
cd /
cp -rn /boot/* /mnt/mmcblk0p7/
umount /mnt/mmcblk0p8
mount -t btrfs -o compress=zstd:9 /dev/mmcblk0p8  /mnt/mmcblk0p8
cd /mnt/mmcblk0p8
rm -rf bin lib sbin usr www 
cd /mnt/mmcblk0p8/etc
rm -rf !(config|fstab)
cd /
cp -rn bin /mnt/mmcblk0p8/
cp -rn lib /mnt/mmcblk0p8/
cp -rn sbin /mnt/mmcblk0p8/
cp -rn usr /mnt/mmcblk0p8/
cp -rn www /mnt/mmcblk0p8/
cp -rn etc /mnt/mmcblk0p8/
