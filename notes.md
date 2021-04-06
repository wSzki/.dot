https://kkovacs.eu/cool-but-obscure-unix-tools

#Raspberry
startx in /etc/profile

# [TIPS]

`
for i in *.png
do
	mv $i $i.jpg
done

sudo !!

ctrl a = begin
ctrl e = end

/home/wsz/.vscode-oss/extensions/sainnhe.gruvbox-material-6.3.4/themes

// MOUSE FLICKER
xrandr --output eDP-1 --auto --output HDMI-2 --auto --scale 2x2 --right-of eDP-1  # Simpler oneliner scaling
xrandr --output eDP-1 --scale 0.9999x0.9999  # Stop flicker

.Xresources < Xcursor.size: 12
xf86-video-nouveau ?


convert file.{jpg, png}

 parallel convert '{}' '{.}.jpg' ::: *.rw2

VIM PYTHON
python3 -m pip install --user --upgrade pynvim


# SuperCollider
/home/wsz/.local/share/SuperCollider/Extensions
tar xjvf  SuperCollider-3.11.2-Source.tar.bz2

▲ share/SuperCollider/Extensions tree
.
├── MiBraids.so
├── MiClouds.so
├── MiElements.so
├── MiMu.so
├── MiOmi.so
├── MiPlaits.so
├── MiRings.so
├── MiRipples.so
├── MiTides.so
├── MiVerb.so
├── MiWarps.so
├── sc
│   ├── Classes
│   │   ├── MiBraids.sc
│   │   ├── MiClouds.sc
│   │   ├── MiElements.sc
│   │   ├── MiMu.sc
│   │   ├── MiOmi.sc
│   │   ├── MiPlaits.sc
│   │   ├── MiRings.sc
│   │   ├── MiRipples.sc
│   │   ├── MiTides.sc
│   │   ├── MiVerb.sc
│   │   └── MiWarps.sc
│   └── HelpSource
│       └── Classes
│           ├── MiBraids.schelp
│           ├── MiClouds.schelp
│           ├── MiElements.schelp
│           ├── MiMu.schelp
│           ├── MiOmi.schelp
│           ├── MiPlaits.schelp
│           ├── MiRings.schelp
│           ├── MiRipples.schelp
│           ├── MiTides.schelp
│           └── MiVerb.schelp
└── scide_scnvim -> /home/wsz/.vim/plugged/scnvim/scide_scnvim
`

# add user to video group for backlight control
# acpi backlight
# install alsamixer pactl utils for audio
# pavucontrol pulseaudio control GUI

- xev : keystroke monitor
- xprop : window properties

# [MISC]

nohup = no hang up, don't kill process if terminal dies
.zprofile contains rofi data., autostartx
# [WIFI]

wifi-menu
- dialog
- netctl
- openresolv

- nmtui
sudo ip link set wlan0 down
sudo systemctl stop NetworkManager.service
sudo systemctl disable NetworkManager.service
sudo systemctl enable netctl-auto@wlan0.service

sudo systemctl start netctl-auto@wlan0.service
Set priority in config file /etc/netctl/wlan0-...


# [AUR]


## [Virtualbox]

- linux-zen-headers
- dkms
- virtualbox-host-modules (arch is for og linux only)
- sudo modprobe vboxdrv
- yay -S virtualbox-ext-oracle

- curl cheat.sh

- sysstat -> mpstat
- picom - compton // opacity, fade
- compiz // mission control, check SCALE plugin

- taskwarrior-tui-git
- xorg-xfd // print charsets
- ttf-scientifica
- pkg-utils
- pkgconfig
- libx11-dev // Xatom.h for st
- libxft-dev
- make
- gcc
- cpupower
- valgrind
- gdb

// Video streaming
modprobe v4l2loopback

- fwupd  -  update firmware
- ytfzf
- testdrive
- photorec // recovery pictures
- mosh // SSH alternative
- gping
- ytmdl // BETTER YTDL
- acpilight // remove xorg-backlight with acpilight -- sudo usermod -aG video wsz; reboot
- base-devel // raspi base utils
- nmap // local ip ifnder
- fasd
- fontpreview-ueberzug-git
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
- evince //pdf
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

# AUDIO
pulseaudio
alsa-tools
alsa-utils

# POWERTOP
etc/default/cpupower -> set default governor

# AUDIO
sudo pacman -S realtime-privileges
sudo vim /etc/security/limits.d/99-realtime-privileges.conf
@audio          -       rtprio          99
sudo usermod -a -G realtime wsz




Download supercollider from website to complie with source code
/home/wsz/.local/share/SuperCollider/Extensions
 ▲ share/SuperCollider/Extensions tree
.
├── MiBraids.so
├── MiClouds.so
├── MiElements.so
├── MiMu.so
├── MiOmi.so
├── MiPlaits.so
├── MiRings.so
├── MiRipples.so
├── MiTides.so
├── MiVerb.so
├── MiWarps.so
├── sc
│   ├── Classes
│   │   ├── MiBraids.sc
│   │   ├── MiClouds.sc
│   │   ├── MiElements.sc
│   │   ├── MiMu.sc
│   │   ├── MiOmi.sc
│   │   ├── MiPlaits.sc
│   │   ├── MiRings.sc
│   │   ├── MiRipples.sc
│   │   ├── MiTides.sc
│   │   ├── MiVerb.sc
│   │   └── MiWarps.sc
│   └── HelpSource
│       └── Classes
│           ├── MiBraids.schelp
│           ├── MiClouds.schelp
│           ├── MiElements.schelp
│           ├── MiMu.schelp
│           ├── MiOmi.schelp
│           ├── MiPlaits.schelp
│           ├── MiRings.schelp
│           ├── MiRipples.schelp
│           ├── MiTides.schelp
│           └── MiVerb.schelp
└── scide_scnvim -> /home/wsz/.vim/plugged/scnvim/scide_scnvim
