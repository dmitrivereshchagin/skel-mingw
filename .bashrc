#
# ~/.bashrc
#

[[ $- != *i* ]] && return

shopt -s cdspell nocaseglob

CDPATH=:$HOME

HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%H:%M '

prompt_command() {
    local status=$?

    PS1="\[\e[1;34m\]\W\[\e[m\] \$ "
    if (( $status )); then
	PS1="\[\e[1;31m\]$status $PS1"
    fi

    echo -ne "\e]0;$MSYSTEM: ${PWD/#$HOME/~}\a"
}

PROMPT_COMMAND=prompt_command

export BLOCK_SIZE=human-readable

export LESS=-iMQR
export LESSHISTFILE=-

export MANWIDTH=80

export EDITOR=vim
export VIMINIT='let $MYVIMRC = "$HOME/.vim/vimrc" | source $MYVIMRC'

alias d='dirs -v'
alias h=history
alias j=jobs
alias po=popd
alias pu=pushd

alias CH='./configure --help'
alias CO=./configure
alias g='grep -Ei'
alias gdb='gdb -q'
alias grep='grep --color=auto'
alias l='ls -l'
alias la='ls -al'
alias ll='ls -l'
alias ls='ls --color=auto -F'
alias mkdir='mkdir -p'
alias vi=vim

alias mgg='mingw-get upgrade'
alias mgi='mingw-get install'
alias mgl='mingw-get list'
alias mgr='mingw-get remove'
alias mgu='mingw-get update'
alias mtty='mintty -e bash &'
