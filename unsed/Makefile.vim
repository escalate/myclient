.DEFAULT_GOAL := plugins

.PHONY: update
update:
	sudo apt-get update

.PHONY: install
install: update
	sudo apt-get install --yes vim vim-addon-manager

.PHONY: clean
clean: install
	rm --recursive --force "$(HOME)/.vim/"

.PHONY: plugins
plugins: clean
	git clone https://github.com/preservim/nerdtree.git "$(HOME)/.vim/pack/plugins/start/nerdtree"
	vim -u NONE -c "helptags $(HOME)/.vim/pack/plugins/start/nerdtree/doc" -c q
	git clone https://github.com/vim-airline/vim-airline.git "$(HOME)/.vim/pack/plugins/start/vim-airline"
	vim -u NONE -c "helptags $(HOME)/.vim/pack/plugins/start/vim-airline/doc" -c q
	git clone https://github.com/vim-airline/vim-airline-themes.git "$(HOME)/.vim/pack/plugins/start/vim-airline-themes"
	vim -u NONE -c "helptags $(HOME)/.vim/pack/plugins/start/vim-airline-themes/doc" -c q
	git clone https://github.com/altercation/vim-colors-solarized.git "$(HOME)/.vim/pack/plugins/start/vim-colors-solarized"
	vim -u NONE -c "helptags $(HOME)/.vim/pack/plugins/start/vim-colors-solarized/doc" -c q
	git clone https://github.com/drmikehenry/vim-fixkey.git "$(HOME)/.vim/pack/plugins/start/vim-fixkey"
	vim -u NONE -c "helptags $(HOME)/.vim/pack/plugins/start/vim-fixkey/doc" -c q
