#!/bin/zsh

# git plugin breaks when upgrading oh-my-zsh (so does agnoster theme)
plugins=(git rails brew gem rbates lein tmux tmuxinator vagrant)
source $HOME/.zsh/omz

[[ -s "$HOME/.zsh/alias" ]] && source $HOME/.zsh/alias
[[ -s "$HOME/.zsh/func" ]] && source $HOME/.zsh/func
[[ -s "$HOME/.zsh/bindkeys" ]] && source $HOME/.zsh/bindkeys
[[ -s "$HOME/.zsh/functions" ]] && source $HOME/.zsh/functions
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
for f in $HOME/.zsh/.etc/*; do; source $f; done;

unsetopt correct_all #disable autocorrect
