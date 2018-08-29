#!/bin/zsh

# git plugin breaks when upgrading oh-my-zsh (so does agnoster theme)
plugins=(git rails brew gem rbates lein vagrant)
source $HOME/.zsh/omz

export DF=$DOTFILES
export DFA=$DF/alias
export DFZ=$DF/zsh
export DFE=$DF/emacs
export DFV=$DF/vim
export DFK=$DF/kbd

[[ -s "$HOME/.zsh/alias" ]] && source $HOME/.zsh/alias
[[ -s "$HOME/.zsh/func" ]] && source $HOME/.zsh/func
[[ -s "$HOME/.zsh/bindkeys" ]] && source $HOME/.zsh/bindkeys
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

unsetopt correct_all # disable zsh autocorrect

for f in $HOME/.zsh/.etc/*; do; source $f; done;
