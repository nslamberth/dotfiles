# set aliases
alias cdd="cd  /cygdrive/c/Users/nlambert1/Desktop/"
alias cls="clear"
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -l"
alias vbp="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias pushdot="bash ~/dotfiles/push-dotfiles.sh"
alias pulldot="bash ~/dotfiles/pull-dotfiles.sh"

# disable flask debug pin
export WERKZEUG_DEBUG_PIN=off

### home specific things
if [[ ${OSTYPE:0:6} == "darwin" ]]; then
    cd ~/Desktop
    alias ls="ls -F1t"
    export PATH=/usr/local/bin:$PATH
fi

### work specific things
if [[ ${OSTYPE:0:6} == "cygwin" ]]; then
    alias e.="explorer ."
    alias csplit='python C:\\Users\\nlambert1\\Desktop\\code\\clitools\\csv_splitter.py'
    alias muzak='python C:\\Users\\nlambert1\\Desktop\\code\\clitools\\muzak.py'
    alias mbox='python C:\\Users\\nlambert1\\Desktop\\code\\clitools\\mbox_export.py'
    alias goodmorning="cdd; python upload_products_to_pgci.py & python upload_innovid_data_to_pgci.py & python upload_comscore_data_to_pgci.py &"
    alias quest="cd /cygdrive/c/WinPython-64bit-2.7.6.4/python-2.7.6.amd64/Lib/site-packages/requests/"
    alias csp="cd /cygdrive/c/WinPython-64bit-2.7.6.4/python-2.7.6.amd64/Lib/site-packages/"
    alias vutils="vim /cygdrive/c/WinPython-64bit-2.7.6.4/python-2.7.6.amd64/Lib/site-packages/utils.py"
    desktop="/cygdrive/c/Users/nlambert1/Desktop/"
    export PATH=/cygdrive/c/WinPython-64bit-2.7.6.4/python-2.7.6.amd64:$PATH
    export PATH=/cygdrive/c/WinPython-64bit-2.7.6.4/python-2.7.6.amd64/Scripts:$PATH
fi
