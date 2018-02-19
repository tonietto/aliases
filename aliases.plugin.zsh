# shortcuts
alias vi='vim'
alias ra='ranger'
alias R='R --quiet'
alias ts='tasks'
alias pu='pass unlock'
alias pue='pass unlock && exit'
alias pul='pass unlock && encfs -i 60 ~/.ledger ~/ledger'
alias ddg='surfraw duckduckgo'
alias showip="ipconfig getifaddr en0"

# docker aliases
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"
alias dclf="docker-compose logs -f"
function dsup() { docker-compose stop $* && docker-compose up -d $* && docker-compose logs -f --tail 300 $* }

# terminal
alias c='clear'
alias cs='clear && show-version'
alias ct='clear && figlet TASKS | lolcat && task next'
alias cl='cd ~/.calcurse && c && figlet CALENDAR | lolcat && echo ----------------- && echo Today is $(date +%m/%d/%y) && echo ----------------- && echo "" && calcurse -r3 && notify-send "Appointments for today" "$(calcurse -r1)"'
alias tasks='clear && figlet TASKS | lolcat && task next'
alias cb='xclip -selection clipboard'
alias ds='du -h ./ | sort -rh | head -n 1' # show this directory size
alias vat='vimcat'

# suspend and exit
alias suspend='xset dpms force off' # Ubuntu specific
alias bye="clear && figlet BYE! | lolcat && revolver -s arrow2 start && sleep 5 && exit"

# aliases for tmux/tmuxinator
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias tlay='tmux-layout'
alias mux='tmuxinator'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.i3/config'

# monitor configs
alias mon-office='~/.monitor/office_outputs.sh'

# notes
n() { $EDITOR ~/notes/"$*" }
nls() { ls -c ~/notes/ | grep "$*" }

# fun
alias neo='clear && neofetch --config ~/.config/neofetch/config.conf'
alias alohaine="fortune | cowsay | lolcat"
alias aloha="clear && figlet ALOHA! | lolcat"
