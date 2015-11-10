[[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart X on login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
