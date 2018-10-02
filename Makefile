.PHONY: bootstrap
bootstrap:
	$(MAKE) --file Makefile.pkg_install
	$(MAKE) --file Makefile.pkg_erase
	$(MAKE) --file Makefile.adapta
	$(MAKE) --file Makefile.chrome
	$(MAKE) --file Makefile.papirus
