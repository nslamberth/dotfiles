# aliases
alias cls="clear"
alias la="ls -a"
alias ll="ls -l"
alias vbp="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"

### OSX Specific things.
if [[ ${OSTYPE:0:6} == "darwin" ]]; then
    cd ~/Desktop
    alias ls="ls -F1t"
    alias cdd="cd  ~/Desktop"
    export PATH=/usr/local/bin:$PATH
fi


