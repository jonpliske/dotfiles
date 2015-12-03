WORK ?= no
.PHONY: install

install: ~/.zshrc.d
	@echo installing in work env - $(WORK)

	# git
	pushd ~ \
	&& ln -s code/dotfiles/git/gitignore ./.gitignore \
	&& ln -s code/dotfiles/git/gitconfig ./.gitconfig \
	&& popd

~/.zshrc.d:
	pushd ~ \
	&& ln -s ./code/dotfiles/.zshrc.d \
	&& popd
