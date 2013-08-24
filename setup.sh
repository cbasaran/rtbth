mkdir -p /etc/Wireless/RT3290
cp rtbt.bin /etc/Wireless/RT3290
cp 49rtbt /usr/lib64/pm-utils/sleep.d/
echo '
modprobe rtbth 
mknod /dev/rtbth c 192 0
/etc/Wireless/RT3290/rtbt.bin &
exit 0' >> /etc/rc.d/rc.local
