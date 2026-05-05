#!/usr/bin/env bash

stow -v --dotfiles -d "$(dirname $0)" -t "$HOME" $@
