# terminal
alias c='clear'

# suspend and exit
alias suspend='xset dpms force off' # Ubuntu specific
alias bye="clear && figlet BYE! | lolcat && revolver -s arrow2 start && sleep 5 && exit"

# aliases for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# convenience aliases for editing configs
alias eh='vim ~/.hyper.js'
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'

# fun
alias alohaine="fortune | cowsay | lolcat"
alias aloha="clear && figlet ALOHA! | lolcat"
alias showip="ipconfig getifaddr en0"
