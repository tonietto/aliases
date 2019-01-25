# Convenience aliases for editing configs {{{
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.i3/config'
#}}}
# Dotfiles {{{
gdots() {
  APPS=(~/.calcurse ~/ledger ~/.newsboat ~/notes ~/.tmuxinator);
  for APP in $APPS; do
  echo "git $*"ing $APP.. && \
  git -C $APP "$*" || notify-send gdots "$APP had an error"
  ; done ;
  echo "git $*"ing pass.. && \
  pass git "$*" || notify-send gdots "$APP had an error"
  echo Done!
}
#}}}
# Docker aliases {{{
alias dcomp="docker-compose"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dclf="docker-compose logs -f"
function dsul() { docker-compose stop $* && docker-compose up -d $* && docker-compose logs -f --tail 300 $* }
#}}}
# Fun {{{
alias neo='clear && neofetch --config ~/.config/neofetch/config.conf'
alias alohaine="fortune | cowsay | lolcat"
alias aloha="clear && figlet ALOHA! | lolcat"
#}}}
# Navigation {{{
alias c='clear'
alias cb='xclip -selection clipboard'
alias cl='cd ~/.calcurse && c && figlet CALENDAR | lolcat && echo ----------------- && echo Today is $(date +%m/%d/%y) && echo ----------------- && echo "" && calcurse -r3 && notify-send "Appointments for today" "$(calcurse -r1)"'
alias cs='clear && show-version'
alias ds='du -h ./ | sort -rh | head -n 1' # show this directory size
#}}}
# Notes {{{
n() { $EDITOR ~/notes/"$*" }
nls() { ls -c ~/notes/ | grep "$*" }
ntree() { tree --noreport ~/notes/ }
nsearch() { tree --noreport -P "*$**" ~/notes/ }
nr() { ranger ~/notes/ }
ngit() { git -C ~/notes/ "$*" }
#}}}
# Shortcuts {{{
alias ra='ranger'
alias R='R --quiet'
alias showip="ipconfig getifaddr en0"
alias ts='tasks'
alias vat='vimcat'
alias pue='pass unlock && exit'
alias pul='pass unlock && encfs -i 60 ~/.ledger ~/ledger'
alias pu='pass unlock'
alias gf='git fetch $(git rev-parse --symbolic-full-name --abbrev-ref @{upstream} | sed 's!/! !')'
#}}}
# Suspend and exit {{{
alias suspend='xset dpms force off' # Ubuntu specific
alias bye="clear && figlet BYE! | lolcat && revolver -s arrow2 start && sleep 5 && exit"
#}}}
# Tmux/tmuxinator {{{
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias tlay='tmux-layout'
alias mux='tmuxinator'
#}}}

# vim:foldmethod=marker:foldlevel=0
