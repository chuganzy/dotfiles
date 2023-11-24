PWD:=$(shell pwd)

.PHONY: update
update:
	brew bundle dump --force --tap --formula --cask --mas

.PHONY: install
install:
	ln -svf $(PWD)/.zshrc ~
