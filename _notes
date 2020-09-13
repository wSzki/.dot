#!/bin/sh


#/etc/systemd/logind.conf
# for lid control


#* * * * * env DISPLAY=:0 /usr/bin/lowBatteryCheck
# AUDIO CONVERT
#ffmpeg -i audio.aac -acodec libmp3lame audio.mp3

# BLUETOOTHT
# pusleaudio-bluetooth
# sudo vim /etc/bluetooth/main.conf

# usermod -aG realtime + audio wsz


#LAPTOP SUSPOEND LID CLOSE
#/etc/systemd/logind.conf

# UDEV RULES
#/etc/udev/rules.d

### CHECK GOVERNOR FOR SYSTEM EPRFORMANCE TWEAKS


# /etc/udev/rules.d >> battery
# NOTES ###################################################################################

#makepkg -sri // makepkg Si // sudo pacman -U <tar.xz>
#exo-preferred-applications
#TO MONITOR KEYSTROKES > xev
#https://aur.archlinux.org/autojump.git CHECK THIS OUT
#https://github.com/VitaliyRodnenko/geeknote.git
#https://github.com/albacoretuna/moro.git
#
# SETTINGS ################################################################################


# PHP MYADMIN
# /etc/webapps/phpmyadmin change theme to metro

# go-mtpfs FOR ANDROID FILE TRANSFER

# Chrome //////////////////////////////////////////////////////////////////////////////////
#   Flat Theme 
#   ABP
#   backBackWithBackspace 
#   raindrop 
#   darkReader 
#   thinScrollBar 
#   scrollBarCustomizer
#   colorzilla
#   vim note:todo
#   fait adblocker


# Code ////////////////////////////////////////////////////////////////////////////////////
#   Gruvbox Minor 
#   Indent 2 
#   Rainbow indent

# Tab /////////////////////////////////////////////////////////////////////////////////////
#   set;defaultCommand;dg

# TLP /////////////////////////////////////////////////////////////////////////////////////
#tlp-stat -s to check system

# DISABLE 5s at BOOT //////////////////////////////////////////////////////////////////////
#/boot/loader/entries/Archlabs.conf

# Compose Key /////////////////////////////////////////////////////////////////////////////
setxkbmap -option compose:prsc

# WIFI ####################################################################################
sudo pacman -Syu

#sudo ip link set wlan0 down
#sudo systemctl stop NetworkManager.service
#sudo systemctl disable NetworkManager.service
#sudo systemctl enable netctl-auto@wlan0.service
#Set priority in config file /etc/netctl/wlan0-...

#netctl enable <name> to autoconnect ??? reenable? netctl-auto? wpa_actiond MIA?

sudo wifi-menu

# PACKAGES ################################################################################
sudo pacman -S --noconfirm code
sudo pacman -S --noconfirm strace 
sudo pacman -S --noconfirm xclip
sudo pacman -S --noconfirm chromium
sudo pacman -S --noconfirm alsa-utils
sudo pacman -S --noconfirm fzf
sudo pacman -S --noconfirm ranger
sudo pacman -S --noconfirm cmus #:colorscheme green mono 88
sudo pacman -S --noconfirm calcurse #calendar
sudo pacman -S --noconfirm mps-youtube
sudo pacman -S --noconfirm youtube-dl
sudo pacman -S --noconfirm htop
sudo pacman -S --noconfirm pydf
sudo pacman -S --noconfirm gpick #color
sudo pacman -S --noconfirm curl
sudo pacman -S --noconfirm xbindkeys
sudo pacman -S --noconfirm unzip
sudo pacman -S --noconfirm tree
sudo pacman -S --noconfirm nemo
sudo pacman -S --noconfirm nomacs #image
auso pacman -S --noconfirm lynx
sudo pacman -S --noconfirm evince #doc viewer
sudo pacman -S --noconfirm task
sudo pacman -S --noconfirm mpv
sudo pacman -S --noconfirm vlc
sudo pacman -S --noconfirm unclutter
sudo pacman -S --noconfirm redshift
sudo pacman -S --noconfirm xautolock #systemctl suspend 
sudo pacman -S --noconfirm feh
sudo pacman -S --noconfirm tlp #battery saver / powwer management || sudo tlp stat -s
sudo pacman -S --noconfirm audacity
sudo pacman -S --noconfirm gconf #for marabu orca
sudo pacman -S --noconfirm fcron 
sudo pacman -S --noconfirm acpi
sudo pacman -S --noconfirm yay
sudo pacman -S --noconfirm zeal
sudo pacman -S --noconfirm apache
sudo pacman -S --noconfirm csound
# Generates | /srv/http
# Generates | /etc/httpd/conf/httpd.conf
sudo pacman -S --noconfirm mysql
sudo pacman -S --noconfirm phpmyadmin
sudo pacman -S --noconfirm libreoffice
sudo pacman -S --noconfirm hub
sudo pacman -S --noconfirm tldr 
sudo pacman -S --noconfirm ncdu # What is eating my disk space
sudo pacman -S --noconfirm thefuck # WTF auto correct
sudo pacman -S --noconfirm git-lfs # Large File Storage 
sudo pacman -S rofi
sudo pacman -S autosugestions
sudo pacman -S i3-gaps
sudo pacman -S i3status


yay -S numix-circle-icon-theme-git
yay -S scrcpy #android screen copy
# Theme for PHPMyAdmin
# vim/etc/phpmyadmin/config.inc.php
# $cfg['ThemeDefault'] = 'metro';

#CREATE USER 'user'@'localhost' IDENTIFIED BY 'password'
#GRANT ALL PRIVILEGES ON * . * TO 'user'@localhost;


#sudo pacman -S --noconfirm xpdf
#sudo pacman -S --noconfirm inkscape
#sudo pacman -S --noconfirm krita
#sudo pacman -S --noconfirm gimp
#sudo pacman -S --noconfirm mpudf

# NPM ####################################################################################### #
sudo pacman -S nodejs
sudo pacman -S npm
cd ~/Desktop && mkdir .node_modules_global
npm config set prefix=$HOME/Desktop/.node_modules_global
npm install npm@latest -g

# POWER SAVER #############################################################################

sudo tlp start
sudo tlp true
sudo tlp stat -s
sudo systemctl start tlp.service
sudo systemctl start tlp.service
sudo systemctl enable tlp-sleep.service
sudo systemctl enable tlp-sleep.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.sokcet

sudo systemctl start fcron.service
sudo systemctl enable fcron.service

# YAY #####################################################################################
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -s folder-color-switcher #nemo folder colors
yay -S ccat
yay -S barrier
#yay -S downgrade
# PULSEAUDIO ##############################################################################
pulseaudio-start

# OH MY ZSH ###############################################################################
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# VIM #####################################################################################

# NERDTREE ########################################################################################
#git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
#vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# Gruvbox & Airline  //////////////////////////////////////////////////////////////////////
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Vim Notes ///////////////////////////////////////////////////////////////////////////////
cd ~/.vim/bundle/
wget http://peterodding.com/code/vim/downloads/notes.zip
wget http://peterodding.com/code/vim/downloads/misc.zip

unzip ./notes.zip -d vim-notes
unzip ./misc.zip -d vim-misc
rm ./notes.zip && rm ./misc.zip

# You Complete Me /////////////////////////////////////////////////////////////////////////
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer

# DROPBOX #################################################################################
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#~/.dropbox-dist/dropboxd

# HUNDRED RABBITS #########################################################################
cd ~/Desktop/ && mkdir hundredRabbits && cd hundredRabbits
git clone https://github.com/hundredrabbits/Orca.git 
git clone https://github.com/hundredrabbits/Pilot.git
git clone https://github.com/kyleaedwards/estra.git
git clone https://github.com/lctrt/gull.git
git clone https://github.com/hundredrabbits/Dotgrid.git
git clone https://github.com/hundredrabbits/Marabu.git
git clone https://github.com/hundredrabbits/Ronin.git
git clone https://github.com/hundredrabbits/Left.git
git clone https://github.com/hundredrabbits/Moogle.git
git clone https://github.com/hundredrabbits/Poodle.git
git clone https://github.com/hundredrabbits/Noodle.git

# VCV RACK ################################################################################
#wget https://vcvrack.com/downloads/Rack-1.1.6-lin.zip
#unzip Rack-1.1.6-lin.zip && rm Rack-1.1.6-lin.zip

# REAPER ##################################################################################
#wget https://www.reaper.fm/files/6.x/reaper602_linux_x86_64.tar.xz

# SUCKLESS ################################################################################

cd ~/Desktop && git clone https://github.com/wSzki/Suckless.git
cd ~/Desktop/Suckless

cd dwm && sudo make clean install
cd ../st && sudo make clean install
cd ../dwmblocks && sudo make clean install
cd ../dmenu && sudo make clean install
cd ../surf && sudo make clean install
cd ../slock && sudo make clean install

# CUSTOM SHELL COMMANDS ###################################################################
cd ~/Desktop/Suckless
cd ./bashApps && sudo cp ./* /bin

#cd ~/Desktop  && git clone https://github.com/LukeSmithxyz/wallpapers Wallpapers


# BACKGROUND ##############################################################################
#Background set then ~/.fehbg & in xinitrc
feh --bg-scale ~/.bg.png

# ZSH THEME ###############################################################################
cd /usr/share && git clone https://github.com/halfo/lambda-mod-zsh-theme.git
git clone https://github.com/geometry-zsh/geometry.git && cd
cd ~/bin && git clone https://github.com/pipeseroni/pipes.sh.git


# TOUCHPAD  ###############################################################################
sudo cp ~/Desktop/Suckless/installScript/40-touchpad.conf /etc/X11/xorg.conf.d/

# BOOT TIME ###############################################################################
sudo cp ~/Desktop/Suckless/installScript/loader.conf /boot/loader/



# ZSH THEME ###############################################################################


































































###########################################################################################
