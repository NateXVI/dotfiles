export EDITOR='hx'
export GIT_EDITOR='hx'

alias of='FILE=$(fd . --exclude node_modules | fzf) && [ -n "$FILE" ] && hx "$FILE"'
alias ns='nix-shell'

