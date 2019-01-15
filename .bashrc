set -o vi                           # use vim mode on terminal
export HISTSIZE=30000               # increase history size to n, default is 500
HISTFILESIZE=60000
export HISTTIMEFORMAT="%F %T:"      # set datetime on history
HISTCONTROL=ignorespace


# user's path
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"


# powerline
if [ -f `which powerline-daemon` ]; then  
  powerline-daemon -q                     
  POWERLINE_BASH_CONTINUATION=1           
  POWERLINE_BASH_SELECT=1                 
  . /usr/share/powerline/bash/powerline.sh
fi                                        


# alias
alias bashconf="vim ~/.bashrc"
alias bashrel="source ~/.bashrc"
alias i3conf="vim ~/.config/i3/config"
alias lgn='dbus-launch gnome-terminal'
alias tmuxconf="vim ~/.tmux.conf"
alias vimconf="vim ~/.vimrc"
alias xiconf="vim ~/.xinitrc"
alias xrconf="vim ~/.Xresources"

shopt -s histappend

# enable fzf for Shell completion for Fedora 29
source /usr/share/fzf/shell/key-bindings.bash 
