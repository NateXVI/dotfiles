export EDITOR='nvim'
export GIT_EDITOR='nvim'

alias of='FILE=$(fdfind . --exclude node_modules | fzf) && [ -n "$FILE" ] && nvim "$FILE"'

