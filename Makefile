DESTDIR=
TARGET=$(DESTDIR)/boot/grub/themes

all:

install:
	install -dm755 $(TARGET)
	@for i in `ls themes/`;do [ -d themes/$$i ] && cp -ar themes/$$i $(TARGET);done
	@echo "Fixing permission of files..."
	@find $(TARGET) -type d -exec chmod 755 \{\} \;
	@find $(TARGET) -type f -exec chmod 644 \{\} \;

uninstall:
	rm -rf $(TARGET)

test:
	@echo "NOTICE: xorriso, qemu and grub2-theme-preview(https://github.com/hartwork/grub2-theme-preview) is requried"
	grub2-theme-preview --grub2-mkrescue grub-mkrescue --grub-cfg testdata/grub.cfg themes/deepin/
