
#### ZPROFILE ####

# Global Variables
export ZSH="$HOME/.oh-my-zsh"
export POD="$HOME/.pod"
export DOT="$HOME/.dot"
export PATH="$DOT/bin/scripts:$PATH"
export PATH="$DOT/bin/bookmarks:$PATH"

# Launch startx at login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1  ]]; then
		  exec startx
fi
