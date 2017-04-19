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
