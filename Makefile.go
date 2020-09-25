.DEFAULT_GOAL := install

.PHONY: repository
repository:
	sudo add-apt-repository --yes ppa:longsleep/golang-backports

.PHONY: update
update: repository
	sudo apt update

.PHONY: install
install: update
	sudo apt install --yes golang-go
