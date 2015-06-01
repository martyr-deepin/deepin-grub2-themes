#!/bin/bash

echo "NOTICE: xorriso and qemu is requried"

rm -rf ./iso/boot/grub/themes
mkdir -p ./iso/boot/grub/themes
cp -rf ../deepin/ ./iso/boot/grub/themes/
grub-mkrescue -o grub.iso iso
qemu-system-x86_64 -cdrom grub.iso
