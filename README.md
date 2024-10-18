# Dotfiles

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
