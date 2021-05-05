########################### PLUGINS ##################################
#printf '\n%.0s' {1..100}
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
source ~/.zplug/init.zsh

zplug "laggardkernel/zsh-thefuck", defer:2
zplug "supercrabtree/k", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "aloxaf/fzf-tab"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "subnixr/minimal"
#zplug "mjrafferty/apollo-zsh-theme"
#zplug "geometry-zsh/geometry"
#zplug "wting/autojump", defer:2
#zplug "nvbn/thefuck", defer:2

zplug load #--verbose

########################## SYNTAX HIGHLIGHTING #######################

ZSH_HIGHLIGHT_STYLES[path]='fg=gray, italic'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow, bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow, bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow, bold'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=yellow, bold'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=magenta'

########################## SUBNIXR THEME SETTINGS ######################

MNML_PROMPT=(mnml_status mnml_cwd)
MNML_MAGICENTER=()
MNML_INFOLN=()

########################## APOLLO THEME SETTINGS ######################

#zstyle ':apollo:*:core:modules:left' modules "vi_mode" "status" "dir"
#zstyle ':apollo:*:core:modules:right' modules "git"

########################## TTY COLORS #################################

if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0191d20" #black
	echo -en "\e]P82B2B2B" #darkgrey
	echo -en "\e]P1D75F5F" #darkred
	echo -en "\e]P9E33636" #red
	echo -en "\e]P287AF5F" #darkgreen
	echo -en "\e]PA98E34D" #green
	echo -en "\e]P3D7AF87" #brown
	echo -en "\e]PBFFD75F" #yellow
	echo -en "\e]P48787AF" #darkblue
	echo -en "\e]PC7373C9" #blue
	echo -en "\e]P5BD53A5" #darkmagenta
	echo -en "\e]PDD633B2" #magenta
	echo -en "\e]P65FAFAF" #darkcyan
	echo -en "\e]PE44C9C9" #cyan
	echo -en "\e]P7E5E5E5" #lightgrey
	echo -en "\e]PFFFFFFF" #white
	clear #for background artifacting
fi

########################### SHELL SETTINGS ############################
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"

# OTHER PATHS
#export POD="$HOME/.pod"
#export DOT="$HOME/.dot"
#export PATH="$DOT/bin/scripts:$PATH"
#export PATH="$DOT/bin/bookmarks:$PATH"

# Native Plugins
plugins=(autojump colorize git colored-man-pages fzf)
#plugins=(colorize autojump git k colored-man-pages fzf thefuck zsh-autosuggestions)

export ZSH="$HOME/.oh-my-zsh"

# Bindkeys
bindkey "^f" fzf-file-widget

 #Sources
#if [ -e ~/.oh-my-zsh/themes/geometry/geometry.zsh ]
#then
#	source ~/.oh-my-zsh/themes/geometry/geometry.zsh
#else
#	~/.dot/downloaders/geo.sh
#fi
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source $ZSH/oh-my-zsh.sh

# Autojump
[[ -s /home/wsz/.autojump/etc/profile.d/autojump.sh ]] && source /home/wsz/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u


########################### ALIASES ############################
### BACKUP
alias back="~/.dot/backup.sh"
alias autopush="git add .; git status; git commit -m "autopush"; git push"

### GIT
alias gitls="curl -s \"https://api.github.com/users/wszki/repos?per_page=100\" | grep -o 'git@[^\"]*'"

### IP SCAN
alias nmap_scan="nmap -sn 192.168.0.0/24"

### SUPERCOLLIDER
#alias startjack="pasuspender -- jackd ; jackd -r -d alsa &> /dev/null &"
alias collider="pasuspender -- jackd ; jackd -r -d alsa &> /dev/null & vim -c "SCNvimStart" ~/.dot/supercollider/main.sc && killall jackd"
#alias collider="vim  ~/.dot/supercollider/main.sc"

### RENOISE
alias renoise="pasuspender -- jackd ; jackd -r -d alsa &> /dev/null & /usr/local/bin/renoise-3.3.1 && killall jackd"

### DOCKER
alias docker_start="sudo systemctl start docker.service"
alias docker_stop="sudo systemctl stop docker.service"

### C
#alias gcc="clang"
alias gccc="gcc -Wall -Werror -Wextra"
alias clangc="gcc -Wall -Werror -Wextra"
alias gccf="gcc -g -fsanitize=address -Wall -Werror -Wextra"
alias clangf="gcc -g -fsanitize=address -Wall -Werror -Wextra"
alias norminette="~/.norminette/norminette.rb"
alias norme="norminette -R CheckForbiddenSourceHeader"
alias grademe="~/42/Libftest/grademe.sh -n"
alias deepthought="vim ~/42/Libftest/deepthought"
alias gnl="cd ~/42/gnl"
alias valgrind="~/.local/bin/colour-valgrind"
alias bundle="~/.gem/ruby/2.7.0/bin/bundle"
alias ftsrv="cd ~/42/ft_server"
alias ddbuild="docker build -t server . && docker create -it server /bin/bash &&  "
### TASK
alias ,t="task"
alias t="clear & task summary ; task list rc.dateformat=a_d/m_H:N ; task calendar "
alias ,tdt="task due:tomorrowT12:00"
alias ,tdl="task delete"
alias ,tadd="task add"
alias ddd="cd ~/42/cub3d"

### CUB3D
alias man_mlx="man /usr/local/man/man3/mlx.1"
alias man_mlx_loop="man /usr/local/man/man3/mlx_loop.1"
alias man_mlx_new_image="man /usr/local/man/man3/mlx_new_image.1"
alias man_mlx_pixel="man /usr/local/man/man3/mlx_pixel_put.1"
alias man_mlx_window="man /usr/local/man/man3/mlx_new_window.1"
alias c3d="cd ~/42/cub3d"
alias gcc_mlx="gcc -I /usr/local/include/  main.c -L /usr/local/lib/ -lXext -lX11 -lmlx"
# task add Pay rent due:28th recur:monthly until:now+1yr

### POWERTOP
alias powertop="sudo powertop"
alias autotune="sudo powertop --auto-tune"


### SERVER
alias server-start="sudo systemctl start mariadb.service; sudo systemctl start httpd.service"
alias server-stop="sudo systemctl stop mariadb.service; sudo systemctl stop httpd.service"
alias server-restart="sudo systemctl restart mariadb.service; sudo systemctl restart httpd.service"

### RENAULT
#alias renault="cd /home/wsz/Renault/wszki.github.io/Renault"

### DOTFILES
alias zrc="vim ~/.zshrc"
alias xrc="vim ~/.xinitrc"
alias vrc="vim ~/.vimrc"
alias irc="/bin/vim ~/.config/i3/config"
alias ibrc="vim ~/.config/i3/i3blocks.conf"
alias ib2rc="vim ~/.config/i3/i3blocks2.conf"
alias isrc="vim ~/.config/i3/i3status.conf"
alias config="cd ~/.config"
alias krc="vim ~/.config/kitty/kitty.conf"

### VIM
FILE="/etc/passwd"
if [ -f /bin/nvim ];then alias vim="nvim" ; fi
alias v="vim -o \`fzf\`"

### NOTES
alias n0="vim $DOT/notes.md"
alias n1="vim $POD/_NOTES/todo.md"
alias n2="vim $POD/_NOTES/todo2.md"
alias n9="vim $POD/_NOTES/urgent.md"
alias n3="vim $POD/_NOTES/cnb.md"
alias n42="vim ~/42/notes.md"
### MPV
alias mpyt="mpv --playlist=/home/wsz/.playlist --shuffle --no-video"
alias playlist="vim ~/.playlist"
#alias mpsyt="~/.local/bin/mpsyt"

### CD
alias cddl="cd ~/.dl"
alias tmp="cd ~/.tmp"
alias cdt="cd /tmp"
alias dot="cd ~/.dot"
alias pod="cd ~/.pod"
alias 42="cd ~/42"
alias bookmarks="cd ~/.dot/bin/bookmarks"
alias dbin="cd ~/.dot/bin/"
alias j="autojump"
alias music="cd ~/.cache/ytmdl"
#alias cdd="cd ~/Tree "

### YOUTUBLE DL
alias ytdlm="cdyt; youtube-dl -x --audio-format wav"
alias dddl="cdyt; youtube-dl -xi --audio-format wav"
alias dddlhere="youtube-dl -xi --audio-format wav"
alias ddlddl="cdyt; youtube-dl -xi --audio-format wav --no-playlist"

### PACMAN
alias pac="sudo pacman -S"
alias pac-orphans="pacman -Qtd"
### YAY
alias yay-cache-clear="rm ~/.cache/yay/completion.cache"

### RM LOCK
#alias rm="rm -i"

### DATABASE
alias maria="sudo mariadb"
alias portinfo="sudo nmap -n -PN -sT -sU -p- localhost"

### CCAT
#alias cat="/bin/ccat --color=always"
alias catc="/bin/ccat --color=always"

### GDB TUI
alias db="gdb -tui -q"
alias gdb="gdb -q"

### K IS LS
alias ka="k -a"
alias kk="k -Ah"
alias ls="k"
alias l="k "
alias lsa="k -a"


### XCLIP
alias pbc="xclip -selection clipboard"
alias pbp="xclip -selection clipboard -o"

### MISC
#alias f="fzf -e --preview='cat {}'  --preview-window=right:50%:wrap"
#alias a="ack --color-match=yellow --color-lineno=magenta --color-filename=blue"
alias bday="birthday -f ~/.dot/schedule"
alias schedule="vim ~/.dot/schedule"
alias play_music="cd ~/.dot && mpv --playlist=playlist --shuffle --no-video --loop-playlist &>/dev/null & disown"
alias orca="~/.orca/build/orca"
alias aliasipinfo="curl ipinfo.io"
alias internet_log="ss -p"
alias session_screen_share="cd ; mkfifo sharescreen; script -f sharescreen"
alias screenshot_terminal="ps aux | convert label:@- process.png"
alias ack="ack --color-match=yellow --color-lineno=magenta --color-filename=blue"
alias veille="systemctl suspend && slock"
alias services="systemctl --type=service"
#alias is="vim ~/Tree/Suckless/installScript/installScript.sh"
alias edp_1="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --off --output DP-2-2 --off --output DP-2-3 --off"
alias hdmion="xrandr --output HDMI-2 --auto --above eDP-1"
alias hdmioff="xrandr --output HDMI-2 --off"
alias docked-1=" xrandr --output eDP-1 --primary --mode 1920x1080 --pos 773x1440 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --mode 2560x1440 --pos 1800x0 --rotate normal --output DP-2-2 --off --output DP-2-3 --mode 1440x900 --pos 0x315 --rotate normal; xrandr --output DP-2-3"
#alias docked-1=" xrandr --output eDP-1 --primary --mode 1920x1080 --pos 773x1440 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --mode 2560x1440 --pos 1800x0 --rotate normal --output DP-2-2 --off --output DP-2-3 --mode 1440x900 --pos 0x315 --rotate normal; xrandr --output DP-2-3 --scale 1.25x1.25 "
#alias docked-1="xrandr --output DP-2-3 --scale 1.25x1.25 ; xrandr --output eDP-1 --primary --mode 1920x1080 --pos 773x1440 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --mode 2560x1440 --pos 1800x0 --rotate normal --output DP-2-2 --off --output DP-2-3 --mode 1440x900 --pos 0x315 --rotate normal; "
#alias docked-1="edp_1 ; xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1253x1440 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --mode 2560x1440 --pos 1920x0 --rotate normal --output DP-2-2 --off --output DP-2-3 --mode 1440x900 --pos 480x540 --rotate normal"
alias docked-1="edp_1 && xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1280x1440 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --mode 2560x1440 --pos 1280x0 --rotate normal --output DP-2-2 --mode 1280x1024 --pos 0x584 --rotate normal --output DP-2-3 --off"
alias vga-1h="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off"
alias vga-1v="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1920 --rotate normal --output DP-1 --mode 1920x1080 --pos 840x0 --rotate left --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off"
alias vga-off="xrandr --output DP-1 --off"
alias dualon="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 2025x1440 --rotate normal --output DP-1 --mode 1920x1080 --pos 1060x360 --rotate normal --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --mode 2560x1440 --pos 2980x0 --rotate normal"
alias dualon2="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 366x1920 --rotate normal --output DP-1 --mode 1920x1080 --pos 0x0 --rotate left --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --mode 2560x1440 --pos 1080x480 --rotate normal"
alias toweron1="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1080x1440 --rotate normal --output DP-1 --mode 1920x1080 --pos 0x0 --rotate left --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --mode 2560x1440 --pos 1080x0 --rotate normal"
alias towerson="xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1080x2560 --rotate normal --output DP-1 --mode 1920x1080 --pos 0x1254 --rotate left --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --mode 2560x1440 --pos 1080x0 --rotate left"
alias ethernet="sudo systemctl start dhcpcd@enp0s31f6"
#alias vcv="cd ~/Tree/Rack/ && ./Rack"
alias persist="nohup"
alias showssh="cat ~/.ssh/id_rsa.pub"
alias yank="xclip -sel clip"
# xinput --list | grep TouchPad
# TID=$(xinput list | grep -iPo 'touchpad.*id=\K\d+')
alias touchpad_restart="xinput disable 11 && xinput enable 11"




######  SERVICES
###     WIFI
alias ip-info="ifconfig | grep \"inet \" | grep -v 127.0.0.1"
alias wifi-auto-on="sudo systemctl enable netctl-auto@wlan0.service && sudo systemctl start netctl-auto@wlan0.service"
alias wifi-auto-off="sudo systemctl disable netctl-auto@wlan0.service && sudo systemctl stop netctl-auto@wlan0.service"
alias wifi="sudo wifi-menu"
alias nmap-local="sudo nmap -sn 192.168.0.0/24"
alias wifi-restart="sudo systemctl restart netctl-auto@wlan0.service"
#alias p="ping google.fr"

###     BLUETOOTH
alias bluestart="sudo systemctl enable bluetooth.service && sudo systemctl start bluetooth.service"
alias bluestop="sudo systemctl disable bluetooth.service && sudo systemctl stop bluetooth.service"

###     PERFORMANCE
#alias governor-list="cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"
alias governor-performance="sudo cpupower frequency-set -g performance"
alias governor-powersave="sudo cpupower frequency-set -g powersave"
alias governor-ondemand="sudo cpupower frequency-set -g ondemand"
alias governor-conservative="sudo cpupower frequency-set -g conservative"
alias powertop-report="sudo powertop --html=powerreport.html"

###     LOGIND.CONF
alias nosleep="sudo vim /etc/systemd/logind.conf"

###     SLEEP
alias sleep-off="sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target"
alias sleep-on="sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target"

###     BATTERY
alias battery-monitor="udevadm monitor --property"

###		AUDIO
alias glitchout="aplay /bin/*"



#####################################################################################


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#source ~/.oh-my-zsh/plugins/fzf-tab-completion/zsh/fzf-zsh-completion.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.config"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval $(thefuck --alias)
