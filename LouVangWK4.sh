#!/bin/bash

cd Linux.zip
dd if=/dev/zero of=./8MB.img bs=2M count=13
hexdump ./8MB.img | less
sudo mkfs -t ext2 ./8MB.img
sudo mount ./8MB.img /mnt/tmp
mount; df -h
sudo umount /mnt/tmp
sudo mount /mnt/tmp -remount
sudo fsck /mnt/tmp 
