# Tuan Dao's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PATH=/usr/lib/qt-3.3/bin:/usr/lib/ccache:/tools/hepdsw/scripts:/tools/hepdsw/bin:/scratch/ti/AM335x/linux-devkit/bin:/scratch/ti-06.00.00.00/AM335x/linux-devkit/sysroots/i686-arago-linux/usr/bin:/opt/STM/STLinux-2.3/devkit/sh4/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/tools/klocwork/user/bin:/tools/klocwork/server/bin:/tools/hepdsw/electriccloud/electriccommander/bin:/home/td1026952/bin
# User specific aliases and functions

# Prevent C-d, C-s, C-q bullshit
IGNOREEOF=10
stty -ixon

alias la="ls -la"
alias src="source ~/.bashrc"
alias grep='grep --color=auto'
alias ff='find | grep -i --color=auto'
alias cats='source-highlight --out-format=esc -o STDOUT -i'
alias gr='grep -rin --color=auto'
alias psh='source-highlight --out-format=esc -o STDOUT'
alias tap='telnet localhost 17000'
alias vi="vim"
alias cds="cd /scratch/STSDKAPI/"
alias cdr="cd /scratch/STSDKAPI/Products/Rhino/"
alias cdl="cd /scratch/STSDKAPI/Products/Lisa/"
alias cdc="cd /scratch/STSDKAPI/Core/"
alias sers="screen /dev/ttyS0 115200"
alias tmux="TERM=xterm-256color tmux"
alias ser="screen -r"
alias sck="killall screen"
alias umb="sudo umount /media/BOSE/"
alias mk="make"
alias mkr="make sdk=ti cfg=Release jobs=4 && echo Now copying to sf_Shared... &&
           cp /scratch/STSDKAPI/Products/Rhino/builds/Release/arm-linux/Rhino /media/sf_Shared/"
alias cpr="cp /scratch/STSDKAPI/Products/Rhino/builds/Release/arm-linux/Rhino /media/sf_Shared/"
alias bashrc="vim ~/.bashrc"
alias tmuxrc="vim ~/.tmux.conf.local"
alias vimrc="vim ~/.vimrc"
alias cdvim="cd ~/.vim/"
alias rmswap="rm -f ~/.vim/.swap/*"

export SVN_EDITOR=vim
export GIT_EDITOR=vim

