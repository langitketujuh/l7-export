PREFIX = /usr

all:
	@echo Run \'make install\' to install l7-export.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p l7-export $(DESTDIR)$(PREFIX)/bin/l7-export
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/l7-export

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/l7-export
