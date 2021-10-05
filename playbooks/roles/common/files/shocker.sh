#!/bin/bash

cmd="${@:1}"

echo $cmd

cgcreate -g cpu,cpuacct,memory:my_group
cgexec -g "cpu,cpuacct,memory:my_group" \
		unshare -fmuip --mount-proc \
		chroot /root-for-container/ /bin/sh -c "/bin/mount -t proc proc /proc/ && $cmd"