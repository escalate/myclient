.PHONY: default
default:
	$(MAKE) --file Makefile.workspace
	$(MAKE) --file Makefile.dotfiles
	$(MAKE) --file Makefile.secrets
	$(MAKE) --file Makefile.apt
	$(MAKE) --file Makefile.network
	$(MAKE) --file Makefile.timezone
	$(MAKE) --file Makefile.pkg_install
	$(MAKE) --file Makefile.pkg_erase
	$(MAKE) --file Makefile.adr_tools
	$(MAKE) --file Makefile.ansible
	$(MAKE) --file Makefile.chrome
	$(MAKE) --file Makefile.cookiecutter
	$(MAKE) --file Makefile.dircolors
	$(MAKE) --file Makefile.docker
	$(MAKE) --file Makefile.hadolint
	$(MAKE) --file Makefile.azure-cli
	$(MAKE) --file Makefile.hcloudcli
	$(MAKE) --file Makefile.google-cloud-sdk
	$(MAKE) --file Makefile.editorconfig
	$(MAKE) --file Makefile.etcher
	$(MAKE) --file Makefile.git
	$(MAKE) --file Makefile.pre_commit
	$(MAKE) --file Makefile.golang
	$(MAKE) --file Makefile.gnometerminal
	$(MAKE) --file Makefile.hamster
	$(MAKE) --file Makefile.helm
	$(MAKE) --file Makefile.hugo
	$(MAKE) --file Makefile.keeweb
	$(MAKE) --file Makefile.kubectl
	$(MAKE) --file Makefile.minikube
	$(MAKE) --file Makefile.lens
	$(MAKE) --file Makefile.logcli
	$(MAKE) --file Makefile.nerdfonts
	$(MAKE) --file Makefile.poetry
	$(MAKE) --file Makefile.pyenv
	$(MAKE) --file Makefile.ohmyzsh
	$(MAKE) --file Makefile.papirus
	$(MAKE) --file Makefile.shellcheck
	$(MAKE) --file Makefile.staticcheck
	$(MAKE) --file Makefile.slack
	$(MAKE) --file Makefile.terraform
	$(MAKE) --file Makefile.tmux_plugins
	$(MAKE) --file Makefile.virtualbox
	$(MAKE) --file Makefile.vagrant
	$(MAKE) --file Makefile.vagrant_plugins
	$(MAKE) --file Makefile.vim_plugins
	$(MAKE) --file Makefile.vscode
	$(MAKE) --file Makefile.gsettings
	$(MAKE) --file Makefile.dconf

.PHONY: optional
optional:
	$(MAKE) --file Makefile.barracudavpn

.PHONY: lint
lint:
	ec
	find scripts/ -name "*.sh" -exec shellcheck {} \;

.PHONY: version
version:
	ec --version
	shellcheck --version
