#!/bin/bash

rm -rf ./iso/boot/grub/themes/*
cp -rf ../deepin-grub2-theme/ ./iso/boot/grub/themes/
grub-mkrescue -o grub.iso iso
qemu grub.iso
