{ config, pkgs, ... }:

{
  home.username = "przemyslawbeigert";
  home.homeDirectory = "/Users/przemyslawbeigert";
  home.stateVersion = "24.05";

  home.packages = [];

  home.file = {
    # "./code/open-source/dotfiles".source = builtins.fetchGit {
    #     url = "https://github.com/przemyslawjanpietrzak/dotfiles";
    #     rev = "a5d32856555835756f71879b0e7f4e2c02c8e501";
    # };
    ".config/aerospace/aerospace.toml".source = ./aerospace/aerospace.toml;
    ".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
    ".config/git/.gitconfig".source = ./git/.gitconfig;
    ".config/lvim/config.lua".source = ./lvim/config.lua;
    ".config/ohmyposh/pk10-nord.toml".source = ./ohmyposh/p10k-nord.toml;
    ".config/tmux/tmux.conf".source = ./tmux/tmux.conf;
    # ".config/zellij/config.kdl".source = ./zellij/config.kdl;
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
