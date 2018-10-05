.PHONY: all
all:
	$(MAKE) --file Makefile.apt
	$(MAKE) --file Makefile.network
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
	$(MAKE) --file Makefile.rvm
	$(MAKE) --file Makefile.virtualbox
	$(MAKE) --file Makefile.vagrant
	$(MAKE) --file Makefile.vagrant_plugins
	$(MAKE) --file Makefile.vscode
