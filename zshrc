#!/bin/zsh

unsetopt correct_all #disable autocorrect

[[ -s "$HOME/.zsh/.alias" ]] && source $HOME/.zsh/.alias
[[ -s "$HOME/.zsh/.bindkeys" ]] && source $HOME/.zsh/.bindkeys
[[ -s "$HOME/.zsh/.functions" ]] && source $HOME/.zsh/.functions
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

