SHELL = /usr/bin/env bash -xeuo pipefail

GIT_DIR := $$HOME/ghq/github.com/knakayama/mac-os-x-setup
TAG =

setup-base:
	@xcode-select --install
	@ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	@git clone https://github.com/knakayama/mac-os-x-setup $(GIT_DIR)

setup-python:
	@cd $(GIT_DIR); \
		brew install python3 gcc direnv; \
		python3 -m venv .venv; \
		direnv allow; \
		pip install -r requirements.txt

.PHONY: setup-base setup-python 
