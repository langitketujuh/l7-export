PREFIX = /usr

all:
	@echo Run \'make install\' to install l7-export.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share/color/icc/
	@cp -p l7-export $(DESTDIR)$(PREFIX)/bin/l7-export
	@cp -pr profiles $(DESTDIR)$(PREFIX)/share/color/icc/
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/l7-export

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/l7-export
	@rm -rf $(DESTDIR)$(PREFIX)/share/color/icc/profiles/colord/sRGB.icc
	@rm -rf $(DESTDIR)$(PREFIX)/share/color/icc/profiles/ghostscript/default_rgb.icc
	@rm -rf $(DESTDIR)$(PREFIX)/share/color/icc/profiles/krita/scRGB.icm
	@rm -rf $(DESTDIR)$(PREFIX)/share/color/icc/profiles/scribus/sRGB_icc22.*
