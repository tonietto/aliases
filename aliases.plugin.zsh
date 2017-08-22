# shortcuts
alias vi='vim'
alias ra='ranger'

# terminal
alias c='clear'
alias cb='xclip -selection clipboard'

# suspend and exit
alias suspend='xset dpms force off' # Ubuntu specific
alias bye="clear && figlet BYE! | lolcat && revolver -s arrow2 start && sleep 5 && exit"

# aliases for tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias tlay='tmux-layout'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.i3/config'

# fun
alias neo='clear && neofetch --config ~/.config/neofetch/config'
alias alohaine="fortune | cowsay | lolcat"
alias aloha="clear && figlet ALOHA! | lolcat"
alias showip="ipconfig getifaddr en0"
