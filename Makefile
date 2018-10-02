.PHONY: root
root:
	$(MAKE) --file Makefile.timezone
	$(MAKE) --file Makefile.pkg_install
	$(MAKE) --file Makefile.pkg_erase
	$(MAKE) --file Makefile.adapta
	$(MAKE) --file Makefile.chrome
	$(MAKE) --file Makefile.keeweb
	$(MAKE) --file Makefile.papirus
	$(MAKE) --file Makefile.virtualbox
	$(MAKE) --file Makefile.vagrant

.PHONY: user
user:
	$(MAKE) --file Makefile.vagrant_plugins
