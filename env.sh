export EDITOR='helix'
export GIT_EDITOR='helix'

alias of='FILE=$(fdfind . --exclude node_modules | fzf) && [ -n "$FILE" ] && nvim "$FILE"'

