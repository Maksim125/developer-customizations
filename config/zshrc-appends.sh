#  ╔═══════════════════════════════════════════════════════════════════════════╗
#  ║ ███╗   ███╗ █████╗ ██╗  ██╗███████╗    ██████╗███╗   ███╗██████╗ ███████╗ ║
#  ║ ████╗ ████║██╔══██╗╚██╗██╔╝██╔════╝   ██╔════╝████╗ ████║██╔══██╗██╔════╝ ║
#  ║ ██╔████╔██║███████║ ╚███╔╝ ███████╗   ██║     ██╔████╔██║██║  ██║███████╗ ║
#  ║ ██║╚██╔╝██║██╔══██║ ██╔██╗ ╚════██║   ██║     ██║╚██╔╝██║██║  ██║╚════██║ ║
#  ║ ██║ ╚═╝ ██║██║  ██║██╔╝ ██╗███████║   ╚██████╗██║ ╚═╝ ██║██████╔╝███████║ ║
#  ║ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    ╚═════╝╚═╝     ╚═╝╚═════╝ ╚══════╝ ║
#  ╚═══════════════════════════════════════════════════════════════════════════╝

# CMD autocompletes
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Git
eval "$(scmpuff init --shell=sh)"

# Full path in zsh
PROMPT='%F{green}%~%f %# '

# Better directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Fuzzy finder for cd
cdf() {
  local file

  file=$(fzf)

  if [ -n "$file" ]; then
    cd -- "$(dirname "$file")"
  fi
}

# Make and change directory in one command
mkcd() { mkdir -p "$1" && cd "$1" }

# Type less letter
alias vim=nvim
alias k=kubectl

alias d=docker
alias dps='docker ps'


alias c=cursor

# Where go often
alias projects="cd ~/Documents/Projects"
#  ╔════════════════════════════════════════════════════════════════════════════╗
#  ║                 ███████╗██╗███╗   ██╗                                      ║
#  ║                 ██╔════╝██║████╗  ██║                                      ║
#  ║                 █████╗  ██║██╔██╗ ██║                                      ║
#  ║                 ██╔══╝  ██║██║╚██╗██║                                      ║
#  ║                 ██║     ██║██║ ╚████║                                      ║
#  ║                 ╚═╝     ╚═╝╚═╝  ╚═══╝                                      ║
#  ╚════════════════════════════════════════════════════════════════════════════╝