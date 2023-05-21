# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment

if [ -n "$PS1" ]; then
    # Turn on parallel history
    shopt -s histappend
    # Turn on checkwinsize
    shopt -s checkwinsize

    # Uncomment this to enable the builtin vi(1) command line editor in sh(1),
    #  e.g. ESC to go into visual mode.
    #set -o vi

    # User specific aliases and functions
    alias l='ls -l --color=auto'
    alias ll='ls -laFo --color=auto'
    alias lt='ls -lrt --color=auto'
    alias h='fc -l'
    alias hg='history | grep'
    alias ht='history | tail'
    alias vi=vim

    # be paranoid
    #alias cp='cp -ip'
    #alias mv='mv -i'
    #alias rm='rm -i'
fi

if ! shopt -q login_shell; then
    :
fi
# vim:ts=4:sw=4
