
- xev : keystroke monitor
- xprop : window properties

# [WIFI]

sudo ip link set wlan0 down
sudo systemctl stop NetworkManager.service
sudo systemctl disable NetworkManager.service
sudo systemctl enable netctl-auto@wlan0.service
Set priority in config file /etc/netctl/wlan0-...

# [AUR]


- sysstat -> mpstat 
- compton // opacity, fade

- xorg-xfd // print charsets
- ttf-scientifica
- pkg-utils
- make
- gcc
- cpupower
- valgrind
- gdb

- ueberzug
- ytop
- gnome-boxes
- ack
- poppler > pdftotext
- code
- xclip
- alsa-utils
- strace
- fzf
- ranger
- cfiles
- calcurse
- mps-youtube
- youtube-dl
- htop
- pydf
- gpick
- xbindkeys
- unzip
- tree
- nemo
- nomacs
- lynx
- evince
- mpv
- mplayer
- unclutter
- feh
- tlp
- acpi
- hub
- tldr
- ncdu
- thefuck
- zsh-syntax-highlighting
- zsh-autocompletion
- rofi
- i3-gaps
- i3-blocks
- i3-status
- numix-cirlcle-icon-theme.git
- scrcpy

# TLP

sudo tlp start
sudo tlp true
sudo tlp stat -s
sudo systemctl start tlp.service
sudo systemctl start tlp.service
sudo systemctl enable tlp-sleep.service
sudo systemctl enable tlp-sleep.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.sokcet

-
