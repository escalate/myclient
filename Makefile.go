.DEFAULT_GOAL := install

.PHONY: repository
repository:
	sudo add-apt-repository --yes ppa:longsleep/golang-backports

.PHONY: update
update: repository
	sudo apt-get update

.PHONY: install
install: update
	sudo apt-get install --yes golang-go