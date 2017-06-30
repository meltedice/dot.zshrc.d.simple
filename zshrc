# -*- coding: utf-8 mode: sh -*-

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
setopt appendhistory
unsetopt beep notify
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ise/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ -f $HOME/.envrc ]] && source $HOME/.envrc

export LESS=-R
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NLS_LANG=.UTF-8
export LC_COLLATE="C"
export PERL_BADLANG=0
export EDITOR='vi'
export VISUAL='vi'
export PAGER='less -FRSX'
export SVN_EDITOR="vim"
export GIT_EDITOR="vim"
export GIT_PAGER='less -FRSX'
export LESS='-F -g -i -M -R -S -w -X -z-4'

HISTSIZE=100000
SAVEHIST=500000

alias du="du -h"
alias df="df -h"
alias su="su -l"
alias ls='ls --color'
alias la='ls -hA --color'
alias lf="ls -F --color"
alias ll='ls -hl --color'
alias lla='ls -hlA --color'
alias count-files='find . -maxdepth 1 -type d | sort | while read -r d; do printf "%5d  %s\n" `find "$d" -type f | wc -l` $d; done'
alias count-files-du='find . -maxdepth 1 -type d | sort | while read -r d; do printf "%+7s  %7d  %s\n" `du -s "$d" | cut -f1` `find "$d" -type f | wc -l` $d; done'
alias be='bundle exec'
alias yarn="PATH=/c/Git/cmd/:\$PATH yarn"
alias npm="PATH=/c/Git/cmd/:\$PATH npm"

# http://0xcc.net/unimag/3/
# Share command history between terminals
setopt share_history

# auto directory pushd that you can get dirs list by cd -[tab]
setopt auto_pushd

# http://xoyip.hatenablog.com/entry/2014/04/24/200613
[[ -f $HOME/bin/bundler.sh ]] && export BUNDLER_EDITOR=~/bin/bundler.sh

# Nodenv
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# Go
export GOROOT=/mingw64/lib/go
export GOPATH=~/.go

# Local configuration
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

# yarn
[[ -d $HOME/.yarn ]] && export PATH="$HOME/.yarn/bin:$PATH"
