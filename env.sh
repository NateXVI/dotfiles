export EDITOR='nvim'
export GIT_EDITOR='nvim'

alias of='FILE=$(fdfind . --exclude node_modules | fzf) && [ -n "$FILE" ] && nvim "$FILE"'
alias ns='nix-shell'

# setup brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"

