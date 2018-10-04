.PHONY: bootstrap
bootstrap:
	sudo $(MAKE) --file Makefile.timezone
	sudo $(MAKE) --file Makefile.pkg_install
	sudo $(MAKE) --file Makefile.pkg_erase
	sudo $(MAKE) --file Makefile.adapta
	sudo $(MAKE) --file Makefile.chrome
	sudo $(MAKE) --file Makefile.keeweb
	sudo $(MAKE) --file Makefile.papirus
	sudo $(MAKE) --file Makefile.virtualbox
	sudo $(MAKE) --file Makefile.vagrant
	$(MAKE) --file Makefile.vagrant_plugins
