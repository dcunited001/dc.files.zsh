#!/bin/zsh

unsetopt correct_all #disable autocorrect

[[ -e "$DOTFILES/alias/alias.$OS_TYPE" ]] && source $DOTFILES/alias/alias.$OS_TYPE

[[ -s "$HOME/.zsh/.bindkeys" ]] && source $HOME/.zsh/.bindkeys
[[ -s "$HOME/.zsh/.functions" ]] && source $HOME/.zsh/.functions
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

