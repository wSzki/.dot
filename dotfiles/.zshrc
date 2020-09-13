# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/wsz/.oh-my-zsh"
export suck="/home/wsz/Tree/Suckless"
export pod="/home/wsz/.pod"
#export ANDROID_SDK="/home/wsz/Android/Sdk"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
source ~/.oh-my-zsh/themes/geometry/geometry.zsh

########################### ALIASES ############################

### BACKUP
alias back="~/.dot/backup.sh"

### C
alias gccc="gcc -Wall -Werror -Wextra"
alias norminette="~/.norminette/norminette.rb"
alias norme="norminette -R CheckForbiddenSourceHeader"

### SERVER
alias serverstart="sudo systemctl start mariadb.service; sudo systemctl start httpd.service"
alias serverstop="sudo systemctl stop mariadb.service; sudo systemctl stop httpd.service"
alias serverrestart="sudo systemctl restart mariadb.service; sudo systemctl restart httpd.service"

### RENAULT
alias renault="cd /home/wsz/Renault/wszki.github.io/Renault"

### DOTFILES
alias zrc="vim ~/.zshrc"
alias xrc="vim ~/.xinitrc"
alias vrc="vim ~/.vimrc"
alias irc="vim ~/.config/i3/config"
#alias irc="sudo vim /etc/i3/config"

alias config="cd ~/.config"
alias isrc="sudo vim /etc/i3status.conf"
alias ibrc="sudo vim /etc/i3blocks.conf"
alias ib2rc="sudo vim /etc/i3blocks2.conf"
### CD
alias cdsu="cd ~/Tree/Suckless"
alias cddl="cd ~/Downloads"
alias cdd="cd ~/Tree "
alias cdt="cd /tmp"
alias cdn="cd ~/Tree/Suckless/notes/"
alias dot="cd ~/.dot"
alias pod="cd ~/.pod"
alias 42="cd ~/42_libft/srcs"

### YOUTUBLE DL
alias ytdlm="cdyt; youtube-dl -x --audio-format wav"
alias dddl="cdyt; youtube-dl -xi --audio-format wav"
alias dddlhere="youtube-dl -xi --audio-format wav"
alias ddlddl="cdyt; youtube-dl -xi --audio-format wav --no-playlist"

### PACMAN
alias pac="sudo pacman -S"

### RM LOCK
#alias rm="rm -i"

### DATABASE
alias maria="sudo mariadb"
alias portinfo="sudo nmap -n -PN -sT -sU -p- localhost"

### XCLIP
alias pbc="xclip -selection clipboard"
alias pbp="xclip -selection clipboard -o"

### MISC
alias f="fzf -e --preview='cat {}'  --preview-window=right:50%:wrap"
alias veille="systemctl suspend && slock"
alias services="systemctl --type=service"
alias is="vim ~/Tree/Suckless/installScript/installScript.sh"
alias hdmi="xrandr --output HDMI2 --auto --above eDP1"
alias ethernet="sudo systemctl start dhcpcd@enp0s31f6"
#alias vcv="cd ~/Tree/Rack/ && ./Rack"

### GIT
alias autopush="git add .; git status; git commit -m "autopush"; git push"

######  SERVICES
###     WIFI
alias ipinfo="ifconfig | grep \"inet \" | grep -v 127.0.0.1"
alias p="ping google.fr"
alias autoWifiOn="sudo systemctl enable netctl-auto@wlan0.service && sudo systemctl start netctl-auto@wlan0.service"
alias autoWifiOff="sudo systemctl disable netctl-auto@wlan0.service && sudo systemctl stop netctl-auto@wlan0.service"
alias wifi="sudo wifi-menu"

###     BLUETOOTH
alias bluestart="sudo systemctl enable bluetooth.service && sudo systemctl start bluetooth.service"
alias bluestop="sudo systemctl disable bluetooth.service && sudo systemctl stop bluetooth.service"

###     PERFORMANCE
#alias governor-list="cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"
alias governor-performance="sudo cpupower frequency-set -g performance"
alias governor-powersave="sudo cpupower frequency-set -g powersave"
alias governor-ondemand="sudo cpupower frequency-set -g ondemand"
alias governor-conservative="sudo cpupower frequency-set -g conservative"

###     LOGIND.CONF
alias nosleep="sudo vim /etc/systemd/logind.conf"

###     SLEEP
alias sleepoff="sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target"
alias sleepon="sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target"

###     BATTERY
alias battery-monitor="udevadm monitor --property"

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
# DISABLE_UPDATE_PROMPT="true"

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
plugins=(git k colored-man-pages fzf thefuck zsh-autosuggestions)


source $ZSH/oh-my-zsh.sh

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
