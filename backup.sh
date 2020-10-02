#!/bin/bash


# Dotfiles
cp ~/.vimrc 	  ~/.dot/dot_files
cp ~/.xinitrc 	  ~/.dot/dot_files
cp ~/.zshrc 	  ~/.dot/dot_files
cp ~/.xbindkeysrc ~/.dot/dot_files
cp ~/.profile	  ~/.dot/dot_files

# i3 Configuration
cp ~/.config/i3/* ~/.dot/i3_config

# Config Files
cp -r ~/.config/ranger/ ~/.dot/config_files
cp -r ~/.config/rofi/ ~/.dot/config_files
cp -r ~/.config/mps-youtube ~/.dot/config_files
cp -r ~/.config/kitty ~/.dot/config_files

# Lid Control
#/etc/systemd/logind.conf

cd ~/.dot
gitap
cd
