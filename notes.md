

###############################
###### USE INFO FOR MAN #######
###############################


https://kkovacs.eu/cool-but-obscure-unix-tools

# UNGOOGLED CHROMIUM
https://github.com/ungoogled-software/ungoogled-chromium-archlinux

# ADBLOCKER
git clone git://r-36.net/hosts-gen
cd hosts-gen
sudo make install
sudo cp examples/gethostszero /bin
sudo chmod 775 /bin/gethostszero
sudo /bin/gethostszero
sudo hosts-gen

# M8
<!--use pavucontrol to set default soundcard-->
sudo usermod -aG dialout $USER
sudo usermod -aG uucp $USER

# FIREFOX
- SCALE
about:config layout.css.devPixelsPerPx

#tabbrowser-tabs, #tabbrowser-tabs arrowscrollbox { min-height: 0 !important; }
#tabbrowser-tabs tab { height: var(--tab-min-height); }
#tabbrowser-tabs tab:first-of-type:last-of-type { display: none !important; }


/* HIDE COMPLETELY */
/*#main-window[chromehidden*="toolbar"] #nav-bar {*/
/*visibility: collapse;*/
/*}*/
/*#TabsToolbar { visibility: collapse !important; }*/



#nav-bar {
	min-height: 0 !important;
	max-height: 0 !important;
height: 0 !important;
		--moz-transform: scaleY(0) !important;
transform: scaleY(0) !important;
transition: all 0.1s ease !important;
}

/* Thanks to /u/Ynjxsjmh/ for #nav-bar:focus-within
#titlebar:hover~#nav-bar,
#nav-bar:hover,
#nav-bar:focus-within {
--moz-transform: scale(1) !important;
transform: scale(1) !important;
max-height: 36px !important;
height: 36px !important;
min-height: 36px !important;
}



# HUB
Generate token in github > dev.settings
Use instead password, username = wszki

# MAKEFILE
foreach
vpath
makefile

# NORMINETTE
git clone https://github.com/42School/norminette.git ~/.norminette
cd ~/.norminette
pip3 install -r requirements.txt
sudo python3 setup.py install

# VIM PYTHON
python3 -m pip install --user --upgrade pynvim

# RASPBERRY
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

convert file.{jpg, png}
parallel convert '{}' '{.}.jpg' ::: *.rw2

`

# VSCODE THEME LOCATION
/home/wsz/.vscode-oss/extensions/sainnhe.gruvbox-material-6.3.4/themes

# MOUSE FLICKER
xrandr --output eDP-1 --auto --output HDMI-2 --auto --scale 2x2 --right-of eDP-1  # Simpler oneliner scaling
xrandr --output eDP-1 --scale 0.9999x0.9999  # Stop flicker
xf86-video-nouveau ?

# MOUSE SIZE
.Xresources < Xcursor.size: 12

# AUDIO
<!--check all missing components-->
git clone git://github.com/raboof/realtimeconfigquickscan.git
cd realtimeconfigquickscan
perl ./realTimeConfigQuickScan.pl

# SUPERCOLLIDER
/home/wsz/.local/share/SuperCollider/Extensions
tar xjvf  SuperCollider-3.11.2-Source.tar.bz2

	sudo pacman -S realtime-privileges
	sudo vim /etc/security/limits.d/99-realtime-privileges.conf
	@audio          -       rtprio          99
	sudo usermod -a -G realtime wsz

	Download supercollider from website to complie with source code
	/home/wsz/.local/share/SuperCollider/Extensions
``
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
``

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
- nmcli radio wifi on off
- nm-connection-editor > GUI

<!--sudo ip link set wlan0 down-->
<!--sudo systemctl stop NetworkManager.service-->
<!--sudo systemctl disable NetworkManager.service-->
<!--sudo systemctl enable netctl-auto@wlan0.service-->

<!--sudo systemctl start netctl-auto@wlan0.service-->
<!--Set priority in config file /etc/netctl/wlan0-...-->

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
	- colorgcc
	- cpupower
	- valgrind
	- gdb

	// Video streaming
	modprobe v4l2loopback

	- ddgr // duck research terminal
	- googler // google research terminal
	- info
	- howdoi
	- croc // awesome file sharing
	- cdecl // c explain
	- greenclip - rofi clipboard manager
	- arranger = file organiser
	- remind
	- birthday - reminder
	- rtv - reddit
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

#youtube-dl
	youtube-dl  -xo '%(title)s.%(ext)s' -f 'bestaudio[ext=wav]/best[ext=wav]/best' https://www.youtube.com/watch\?v\=qi66H_04Ppsls

# 42 WIFI

USE nm-connection-editor

	cd /etc/NetworkManager/system-connections
	sudo touch SSID #SSID is the name of the profile, e.g. eduroam
	sudo nano SSID


	[ipv6]
	method=auto

	[connection]
	id=SSID #(e.g.EDUroam)
	uuid=9e123fbc-0123-46e3-97b5-f3214e123456 #unique uuid will be created upon creation of this profile
	type=802-11-wireless

	[802-11-wireless-security]
	key-mgmt=wpa-eap
	auth-alg=open

	[802-11-wireless]
	ssid=SSID
	mode=infrastructure
	mac-address=0A:12:3C:DA:C1:A5
	security=802-11-wireless-security

	[802-1x]
	eap=peap;
	identity=studentid123123
	phase2-auth=mschapv2
	password=mypass123123

	[ipv4]
	method=auto
