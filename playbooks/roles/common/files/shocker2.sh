cmd="${@:1}"
unshare -fmuip --mount-proc \
chroot /root-for-container/ /bin/sh -c "/bin/mount -t proc proc /proc/ && $cmd
