all:

install:
	cp -rf themes/deepin/ /boot/grub/themes/

uninstall:
	rm -rf /boot/grub/themes/deepin/
