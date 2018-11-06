# Convenience aliases for editing configs {{{
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.i3/config'
#}}}
# Dotfiles {{{
gdots() {
  echo "⟳  $*"ing calcurse.. && \
  git -C ~/.calcurse "$*" || notify-send gdots "~/.calcurse had an error" && \
  echo "\n⟳  $*"ing dotfiles.. && \
  git -C ~/dotfiles "$*" || notify-send gdots "~/dotfiles had an error" && \
  echo "\n⟳  $*"ing ledger.. && \
  git -C ~/ledger "$*" || notify-send gdots "~/ledger had an error" && \
  echo "\n⟳  $*"ing newsboat.. && \
  git -C ~/newsboat "$*" || notify-send gdots "~/newsboat had an error" && \
  echo "\n⟳  $*"ing notes.. && \
  git -C ~/notes "$*" || notify-send gdots "~/notes had an error" && \
  echo "\n⟳  $*"ing pass.. && \
  pass git "$*" || notify-send gdots "pass had an error" && \
  echo "\n⟳  $*"ing tmuxinator.. && \
  git -C ~/.tmuxinator "$*" || notify-send gdots "~/.tmuxinator had an error" && \
  echo "\n⟳  $*"ing qutebrowser.. && \
  git -C ~/qutebrowser "$*" || notify-send gdots "~/qutebrowser had an error" && \
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
alias cb='xclip -selection clipboard'
alias c='clear'
alias cl='cd ~/.calcurse && c && figlet CALENDAR | lolcat && echo ----------------- && echo Today is $(date +%m/%d/%y) && echo ----------------- && echo "" && calcurse -r3 && notify-send "Appointments for today" "$(calcurse -r1)"'
alias cs='clear && show-version'
alias ct='clear && figlet TASKS | lolcat && task next'
alias ds='du -h ./ | sort -rh | head -n 1' # show this directory size
alias tasks='clear && figlet TASKS | lolcat && task next'
alias v='f -e vim' # quick opening files with vim and fasd
#}}}
# Notes {{{
n() { $EDITOR ~/notes/"$*" }
nls() { ls -c ~/notes/ | grep "$*" }
ntree() { tree --noreport ~/notes/ }
nsearch() { tree --noreport -P "*$**" ~/notes/ }
nra() { ranger ~/notes/ }
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
alias ssh='kiss && ssh'
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
