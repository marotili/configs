# .bashrc

#exec zsh

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

alias la='ls -a'

alias centos42='schroot -c centos42'
alias centos56='schroot -c centos56'
alias centos63='schroot -c centos63'

alias gdb4="gdb -x ~/.gdbinit4"

