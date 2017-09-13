# shortcuts
alias vi='vim'
alias ra='ranger'
alias wapp='chromium --app=https://web.whatsapp.com'
alias mux='tmuxinator'

# terminal
alias c='clear'
alias cs='clear && show-version'
alias cn='cd ~ && clear && figlet NOTES'
alias cb='xclip -selection clipboard'
alias ds='du -h ./ | sort -rh | head -n 1' # show this directory size

# suspend and exit
alias suspend='xset dpms force off' # Ubuntu specific
alias bye="clear && figlet BYE! | lolcat && revolver -s arrow2 start && sleep 5 && exit"

# aliases for tmux
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias tlay='tmux-layout'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.i3/config'

# monitor configs
alias mon-office='~/.monitor/office_outputs.sh'

# fun
alias neo='clear && neofetch --config ~/.config/neofetch/config'
alias alohaine="fortune | cowsay | lolcat"
alias aloha="clear && figlet ALOHA! | lolcat"
alias showip="ipconfig getifaddr en0"
