#!/bin/bash


# Dotfiles
cp ~/.vimrc 	  ~/.dot/dotfiles
cp ~/.xinitrc 	  ~/.dot/dotfiles
cp ~/.zshrc 	  ~/.dot/dotfiles
cp ~/.xbindkeysrc ~/.dot/dotfiles
cp ~/.profile	  ~/.dot/dotfiles

# i3 Configuration
cp ~/.config/i3/* ~/.dot/i3_config

# Config Files
cp -r ~/.config/ranger/ ~/.dot/config_files
cp -r ~/.config/rofi/ ~/.dot/config_files
cp -r ~/.config/mps-youtube ~/.dot/config_files

# Lid Control
#/etc/systemd/logind.conf

cd ~/.dot
gitap
cd
