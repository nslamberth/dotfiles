# aliases
alias cdd="cd  /cygdrive/c/Users/nlambert1/Desktop/"
alias cls="clear"
alias ls="ls -C $*"
alias la="ls -a"
alias ll="ls -l"
alias ls="ls -F"
alias vbp="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias pushdot="bash ~/dotfiles/push-dotfiles.sh"
alias pulldot="bash ~/dotfiles/pull-dotfiles.sh"

### home specific things
if [[ ${OSTYPE:0:6} == "darwin" ]]; then
    cd ~/Desktop
    alias ls="ls -F1t"
    export PATH=/usr/local/bin:$PATH
fi

### work specific things
if [[ ${OSTYPE:0:6} == "cygwin" ]]; then
    alias e.="explorer ."
    alias nw="/cygdrive/c/Users/nlambert1/Desktop/cmder/Cmder.exe"
    alias csplit="python /cygdrive/c/Users/nlambert1/Desktop/code/clitools/csv_splitter.py $*"
    alias muzak="python /cygdrive/c/Users/nlambert1/Desktop/code/clitools/muzak.py"
    alias goodmorning="cdd; python upload_products_to_pgci.py & python upload_innovid_data_to_pgci.py & python upload_comscore_data_to_pgci.py &"
    alias quest="cd /cygdrive/c/WinPython-64bit-2.7.6.4/python-2.7.6.amd64/Lib/site-packages/requests/"
    # for ipython paste magic
    export DISPLAY=:0.0 
    if (ps aux | grep xinit) > /dev/null
    then
        :
    else
        if (ps aux | grep XWin) > /dev/null
        then
            (ps aux | grep XWin | awk '{print $1}' | xargs kill)
        fi
        startxwin &
        echo "x server started"
    fi
fi
