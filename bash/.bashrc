export VISUAL=nano
export EDITOR="$VISUAL"

# Set Solarized Dark as the default color scheme for the virtual console
if [ "$TERM" = "linux" ]; then
echo -en "\e]P0073642" #black
echo -en "\e]P8002b36" #brblack
echo -en "\e]P1dc322f" #red
echo -en "\e]P9cb4b16" #brred
echo -en "\e]P2859900" #green
echo -en "\e]PA586e75" #brgreen
echo -en "\e]P3b58900" #yellow
echo -en "\e]PB657b83" #bryellow
echo -en "\e]P4268bd2" #blue
echo -en "\e]PC839496" #brblue
echo -en "\e]P5d33682" #magenta
echo -en "\e]PD6c71c4" #brmagenta
echo -en "\e]P62aa198" #cyan
echo -en "\e]PE93a1a1" #brcyan
echo -en "\e]P7eee8d5" #white
echo -en "\e]PFfdf6e3" #brwhite
clear #for background artifacting
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;34m\]\u\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[37m\]'

. /etc/profile.d/vte.sh

eval $(dircolors ~/.dircolors)

shopt -s autocd

# Aliases

alias l='/usr/bin/ls -hlsZ --color=auto'
alias ls='/usr/bin/ls -ahlsZ --color=auto'
#alias ls='ls -ahlsZ --color=auto'
#alias l='ls -hlsZ --color=auto'



alias x='exec startx'

alias p='sudo pacman -Syu'
alias ps='sudo pacman -S'
alias pr='sudo pacman -Rns'
alias mv='mv -i'
alias cp='cp -i'

#aliases for physlock d and systemctl hibernate, suspend, etc...?
#list all orphaned packages: alias orp='pacman -Qdt'

#keep remove all cache except for the latest 3 of each installed package, then remove cache of all uninstalled packages
#"sudo paccache -rvvv; paccache -ruk0"

