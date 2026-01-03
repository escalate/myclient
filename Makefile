.PHONY: default
default:
	# Common
	$(MAKE) --file Makefile.workspace
	$(MAKE) --file Makefile.dotfiles
	$(MAKE) --file Makefile.secrets
	$(MAKE) --file Makefile.local
	$(MAKE) --file Makefile.apt
	$(MAKE) --file Makefile.network
	$(MAKE) --file Makefile.timezone
	$(MAKE) --file Makefile.needrestart
	$(MAKE) --file Makefile.pkg-install
	$(MAKE) --file Makefile.language
	$(MAKE) --file Makefile.clamav
	$(MAKE) --file Makefile.pkg-erase
	# Apt
	$(MAKE) --file Makefile.chrome
	$(MAKE) --file Makefile.dbeaver
	$(MAKE) --file Makefile.docker
	$(MAKE) --file Makefile.edge
	$(MAKE) --file Makefile.etcher
	$(MAKE) --file Makefile.git
	$(MAKE) --file Makefile.google-cloud-sdk
	$(MAKE) --file Makefile.grype
	$(MAKE) --file Makefile.hamster
	$(MAKE) --file Makefile.hugo
	$(MAKE) --file Makefile.keepassxc
	$(MAKE) --file Makefile.kubectl
	$(MAKE) --file Makefile.lens
	$(MAKE) --file Makefile.minikube
	$(MAKE) --file Makefile.multi-gitter
	$(MAKE) --file Makefile.nodejs
	$(MAKE) --file Makefile.papirus
	$(MAKE) --file Makefile.teamviewer
	$(MAKE) --file Makefile.terraform
	$(MAKE) --file Makefile.trivy
	$(MAKE) --file Makefile.vagrant
	$(MAKE) --file Makefile.vagrant-plugins
	$(MAKE) --file Makefile.virtualbox
	$(MAKE) --file Makefile.vscode
	# Snap
	$(MAKE) --file Makefile.golang
	$(MAKE) --file Makefile.shellcheck
	# Python
	$(MAKE) --file Makefile.ansible
	$(MAKE) --file Makefile.azure-cli
	$(MAKE) --file Makefile.cookiecutter
	$(MAKE) --file Makefile.poetry
	$(MAKE) --file Makefile.pre_commit
	$(MAKE) --file Makefile.ruff
	$(MAKE) --file Makefile.yt-dlp
	# NodeJS
	$(MAKE) --file Makefile.prettier
	$(MAKE) --file Makefile.renovate
	# Java
	$(MAKE) --file Makefile.sweethome3d
	# Binary
	$(MAKE) --file Makefile.docker-compose
	$(MAKE) --file Makefile.editorconfig-checker
	$(MAKE) --file Makefile.gitleaks
	$(MAKE) --file Makefile.goss
	$(MAKE) --file Makefile.hadolint
	$(MAKE) --file Makefile.hcloudcli
	$(MAKE) --file Makefile.helm
	$(MAKE) --file Makefile.logcli
	$(MAKE) --file Makefile.rustypipe-botguard
	$(MAKE) --file Makefile.shfmt
	$(MAKE) --file Makefile.staticcheck
	$(MAKE) --file Makefile.yq
	# Terminal
	$(MAKE) --file Makefile.ohmyzsh
	$(MAKE) --file Makefile.gnometerminal
	$(MAKE) --file Makefile.dircolors
	$(MAKE) --file Makefile.nerdfonts
	$(MAKE) --file Makefile.tmux-plugins
	$(MAKE) --file Makefile.vim-plugins
	# Other
	$(MAKE) --file Makefile.truststore
	$(MAKE) --file Makefile.gsettings

.PHONY: optional
optional:
	$(MAKE) --file Makefile.barracudavpn

.PHONY: firmware
firmware:
	$(MAKE) --file Makefile.firmware

.PHONY: update
update:
	$(MAKE) --file Makefile.update-all
