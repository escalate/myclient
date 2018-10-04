java_version = 8

.PHONY: install
install: licence
	sudo apt-get install --yes oracle-java$(java_version)-installer oracle-java$(java_version)-set-default

.PHONY: licence
licence: update
	sudo sh -c 'echo oracle-java$(java_version)-installer shared/accepted-oracle-license-v1-1 boolean true | /usr/bin/debconf-set-selections'

.PHONY: update
update: repository
	sudo apt-get update

.PHONY: repository
repository:
	sudo add-apt-repository --yes ppa:webupd8team/java
