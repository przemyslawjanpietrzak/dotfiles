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
nix run nix-darwin -- switch --flake ~/code/open-source/dotfiles/nix-darwin/
nix run home-manager -- switch --flake ~/code/open-source/dotfiles/home-manager
```

## NixOs

```bash
```

## Clean up
```
nix-collect-garbage
```
