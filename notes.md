https://kkovacs.eu/cool-but-obscure-unix-tools

# [TIPS]

`
for i in *.png
do
	mv $i $i.jpg
done

sudo !!

ctrl a = begin
ctrl e = end

convert file.{jpg, png}

`

- xev : keystroke monitor
- xprop : window properties

# [WIFI]

sudo ip link set wlan0 down
sudo systemctl stop NetworkManager.service
sudo systemctl disable NetworkManager.service
sudo systemctl enable netctl-auto@wlan0.service
Set priority in config file /etc/netctl/wlan0-...
wifi-menu
- dialog
- netctl
- openresolv

# [AUR]

- curl cheat.sh

- sysstat -> mpstat
- picom - compton // opacity, fade

- xorg-xfd // print charsets
- ttf-scientifica
- pkg-utils
- pkgconfig
- make
- gcc
- cpupower
- valgrind
- gdb

- autotiling // [i3] // pip install autotiling
- peek
- xcape
- code-minimap
- xprop // window prop
- gvim
- tlpui
- conky
- skroll
- tmpmail-git
- gotop
- rsstail
- epr-git // epub reader?
- hascard // notes?
- howdoi// tldr like
- lcharmap // ansi chracter viewer
- micro - vim alternative
- aerc // mail client
- powertop
- kmdr
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
- acpid // monitoring AC battery
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
sudo systemctl restart nscd.service
sudo systemctl restart named
sudo systemctl restart dnsmasq
- openresolv

# POWERTOP
etc/default/cpupower -> set default governor-
