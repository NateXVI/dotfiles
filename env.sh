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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias ls='ls --color=auto'
    alias ll='ls --color=auto -alF'
    alias la='ls --color=auto -A'
    alias l='ls  --color=auto -CF'
else
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
fi

# fnm
FNM_PATH="/home/nate/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# bun
export BUN_INSTALL="$HOME/.bun"
if [ -d "$BUN_INSTALL" ]; then
    export PATH="$BUN_INSTALL/bin:$PATH"
fi

# dotnet
export DOTNET_WATCH_SUPPRESS_LAUNCH_BROWSER=true
export DOTNET_WATCH_RESTART_ON_RUDE_EDIT=true
