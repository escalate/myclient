.PHONY: bootstrap
bootstrap:
	$(MAKE) -f Makefile.pkg_install
	$(MAKE) -f Makefile.pkg_erase
	$(MAKE) -f Makefile.adapta
	$(MAKE) -f Makefile.chrome
	$(MAKE) -f Makefile.papirus
