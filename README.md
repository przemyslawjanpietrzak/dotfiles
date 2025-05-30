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
sudo darwin-rebuild switch --flake ~/code/open-source/dotfiles/nix-darwin/
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
