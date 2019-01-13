set -o vi                           # use vim mode on terminal
export HISTSIZE=30000               # increase history size to n, default is 500
HISTFILESIZE=60000
export HISTTIMEFORMAT="%F %T:"      # set datetime on history
HISTCONTROL=ignorespace

# alias
alias bashconf="vim ~/.bashrc"
alias bashrel="source ~/.bashrc"
alias i3conf="vim ~/.config/i3/config"
alias lgn='dbus-launch gnome-terminal'
alias tmuxconf="vim ~/.tmux.conf"
alias vimconf="vim ~/.vimrc"
alias xiconf="vim ~/.xinitrc"
alias xrconf="vim ~/.Xresources"

# fuzzy finder
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

shopt -s histappend

