#!/bin/bash


# Dotfiles
cp ~/.vimrc 	  ~/.dot/dotfiles
cp ~/.xinitrc 	  ~/.dot/dotfiles
cp ~/.zshrc 	  ~/.dot/dotfiles
cp ~/.xbindkeysrc ~/.dot/dotfiles

# i3 Configuration
cp ~/.config/i3/* ~/.dot/i3_config

# Lid Control
#/etc/systemd/logind.conf
