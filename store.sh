#!/usr/bin/bash

stow -v --dotfiles -d "$(dirname $0)" -t "$HOME" $@
