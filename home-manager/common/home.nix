{ config, pkgs, ... }:

{

  home.file = {
    ".config/aerospace/aerospace.toml".source = ./aerospace/aerospace.toml;
    ".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
    ".config/git/config".source = ./git/config;
    ".config/git/ignore".source = ./git/ignore;
    ".config/fish/config.fish".source = ./fish/config.fish;
    ".config/lvim/config.lua".source = ./lvim/config.lua;
    ".config/ohmyposh/pk10-nord.toml".source = ./ohmyposh/p10k-nord.toml;
    ".config/tmux/tmux.conf".source = ./tmux/tmux.conf;
    ".config/zellij/config.kdl".source = ./zellij/config.kdl;
    ".config/zed/settings.json".source = ./zed/settings.json;
  };

  programs.home-manager.enable = true;
}
