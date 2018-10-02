.PHONY: bootstrap
bootstrap:
	$(MAKE) -f Makefile.adapta
	$(MAKE) -f Makefile.chrome
	$(MAKE) -f Makefile.papirus
