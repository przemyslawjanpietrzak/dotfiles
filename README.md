# Dotfiles

## Provisioning

```bahs
xcode-select --install
curl -sSf -L https://install.lix.systems/lix | sh -s -- install

mkdir -p code
mkdir -p code/open-source
mkdir -p stuff
```

## Darwin

```bash
nix run nix-darwin -- switch --flake ~/code/open-source/dotfiles/nix/nix-darwin/
nix run home-manager -- switch --flake ~/code/open-source/dotfiles/home-manager/nix-darwin
```

## NixOs

```bash
sudo nixos-rebuild switch --flake ~/code/open-source/dotfiles/nix/nixos
nix run home-manager -- switch --flake ~/code/open-source/dotfiles/home-manager/nixos
```

## Clean up
```bash
nix-collect-garbage --delete-older-than 1d
nix-env --delete-generations
```
