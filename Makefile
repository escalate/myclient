.PHONY: bootstrap
bootstrap:
	$(MAKE) --file Makefile.apt
	$(MAKE) --file Makefile.timezone
	$(MAKE) --file Makefile.pkg_install
	$(MAKE) --file Makefile.pkg_erase
	$(MAKE) --file Makefile.adapta
	$(MAKE) --file Makefile.adr_tools
	$(MAKE) --file Makefile.chrome
	$(MAKE) --file Makefile.git
	$(MAKE) --file Makefile.java
	$(MAKE) --file Makefile.keeweb
	$(MAKE) --file Makefile.papirus
	$(MAKE) --file Makefile.pyenv
	$(MAKE) --file Makefile.virtualbox
	$(MAKE) --file Makefile.virtualbox_user
	$(MAKE) --file Makefile.vagrant
	$(MAKE) --file Makefile.vagrant_plugins
