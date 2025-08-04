export EDITOR='hx'
export GIT_EDITOR='hx'

alias of='hx .'
alias ns='nix-shell'
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'
alias ta='tmux attach-session'
alias lg='lazygit'
# recursively deletes all folders named "node_modules" in the current directory
alias rmnm='find . -type d -name node_modules -prune -exec rm -rf {} +'

# dotnet
export DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=true
export DOTNET_WATCH_RESTART_ON_RUDE_EDIT=true
