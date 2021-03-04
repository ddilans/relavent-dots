unset HISTFILE
export HISTFILESIZE=0
export PATH="$HOME/bin:$HOME/script:$HOME/.local/bin:/usr/local/bin:$PATH"
alias emerge="doas emerge --ask"
alias s="/usr/bin/emerge --search"
alias ..="cd .."
alias minidlna="doas minidlnad -d -rR"
alias etcmerge="doas etc-update --automode -3"
alias screenkey="screenkey --no-systray"
alias mv="mv -i"
alias sxiv="sxiv -ao"
alias g="grep -ri"
alias f="find . | grep -i"
PS1='`basename "$(pwd)"`> '
#binds are for xterm
bind  '"":backward-kill-word' #ctrl-backspace
bind '"[1;5C":forward-word' #ctrl-right
bind '"[1;5D":backward-word' #ctrl-left
bind '"[Z":menu-complete' #shift-tab
bind '"":"doas !!\n"' #ctrl-r
