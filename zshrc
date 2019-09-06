#!/bin/zsh

# git plugin breaks when upgrading oh-my-zsh (so does agnoster theme)
plugins=(git rails brew gem lein vagrant)

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


#====================================
# ZSH config
#====================================
HISTSIZE=1000
SAVEHIST=200
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt inc_append_history
setopt share_history

# cd
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# completion
setopt automenu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

setopt prompt_subst
unsetopt correct_all # disable zsh autocorrect

for f in $HOME/.zsh/.etc/*; do; source $f; done;
