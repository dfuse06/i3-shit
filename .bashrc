#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# System alias 
alias list="sudo pacman -Qe >> packagelist.txt"
alias get="bash yaourt.sh"
alias neo="neofetch && scrot -d 3 -c"
alias sbr="source ~/.bashrc"
alias gzr=". gzr.sh"

# Git
alias fetch="git fetch"
alias clone="git clone"
alias push="git push"
alias hard="git reset --hard" 
alias add="git add -A"
alias abort="git cherry-pick --abort"

# android 
alias build=". build/envsetup.sh"

export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH=$PATH:~/scripts/
export VISUAL=nano
export EDITOR="$VISUAL"
# Android
export LANG=C
export PATH=~/bin:$PATH
export PATH=$PATH:/opt/android-sdk/tools/
export PATH=$PATH:/opt/android-sdk/platform-tools/
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
export JAVA_HOME=/usr/lib/jvm/java

