#!/bin/bash


# Dotfiles
cp ~/.vimrc 	  ~/.dot/dot_files
cp ~/.xinitrc 	  ~/.dot/dot_files
cp ~/.zshrc 	  ~/.dot/dot_files
cp ~/.xbindkeysrc ~/.dot/dot_files
cp ~/.zprofile	  ~/.dot/dot_files
#cp ~/.taskrc	  ~/.dot/dot_files

# i3 Configuration
cp -r  ~/.config/i3/* ~/.dot/config_files/i3

# Task Files
#cp -r ~/.task	 	  ~/.dot/dot_files

# Config Files
cp -r ~/.config/ranger/ ~/.dot/config_files
cp -r ~/.config/rofi/ ~/.dot/config_files
cp -r ~/.config/mps-youtube ~/.dot/config_files
cp -r ~/.config/kitty ~/.dot/config_files
cp -r ~/.config/nvim/ ~/.dot/config_files
cp -r ~/.config/ytfzf ~/.dot/config_files
cp -r ~/.config/bat ~/.dot/config_files
cp ~/.mozilla/firefox/*/chrome/userChrome.css ~/.dot/config_files
#cp -r ~/.config/i3-switch-if-workspace-empty/ ~/.dot/config_files
#cp -r ~/.config/i3blocks-email ~/.dot/config_files
# Lid Control
#/etc/systemd/logind.conf

cd ~/.dot
gitap
cd
