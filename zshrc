#!/bin/zsh

# git plugin breaks when upgrading oh-my-zsh (so does agnoster theme)
plugins=(git tmux rails brew gem rbates lein tmuxinator vagrant)
source $HOME/.zsh/omz

[[ -s "$HOME/.zsh/alias" ]] && source $HOME/.zsh/alias
[[ -s "$HOME/.zsh/func" ]] && source $HOME/.zsh/func
[[ -s "$HOME/.zsh/bindkeys" ]] && source $HOME/.zsh/bindkeys
[[ -s "$HOME/.zsh/functions" ]] && source $HOME/.zsh/functions
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

unsetopt correct_all # disable zsh autocorrect

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
for f in $HOME/.zsh/.etc/*; do; source $f; done;

# python/pip
# TODO: move python/pip/etc config to separate file
PATH=${PATH}:/usr/local/share/python
export SITE_PACKAGES=/usr/local/lib/python2.7/site-packages

# setup virtualenv
#TODO: either 1) only execute if virtualenv exists
#          or 2) notate how to install (refer to http://te.xel.io/ and find the powerline blog)
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# powerline
# TODO: init script to automatically link ~/.config/powerline to ~/.files/powerline
. $SITE_PACKAGES/powerline/bindings/zsh/powerline.zsh
