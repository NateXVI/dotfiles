# dotfiles

## Getting Started

### Install Nix

Follow the instructions [here](https://github.com/DeterminateSystems/nix-installer).

### Install Home Manager

```bash
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```

Add Home Manager to `~/.profile`

```bash
source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
```


