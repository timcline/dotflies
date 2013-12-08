if [ -x /usr/libexec/path_helper ]; then
    PATH=''
    source /etc/profile
fi

export TERM="xterm-color"
PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export LSCOLORS=GxFxCxDxBxegedabagaced

source ~/.bash_aliases

eval "$(pyenv init -)"
