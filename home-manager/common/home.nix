{ config, home-manager, pkgs, ... }:

{

   home-manager.users.przemyslawjanbeigert.home.file = {
    ".config/aerospace/aerospace.toml".source = ./aerospace/aerospace.toml;
    ".config/fish/config.fish".source = ./fish/config.fish;
    ".config/git/config".source = ./git/config;
    ".config/git/ignore".source = ./git/ignore;
    ".config/i3/config".source = ./i3/config;
    ".config/lvim/config.lua".source = ./lvim/config.lua;
    ".config/ohmyposh/pk10-nord.toml".source = ./ohmyposh/p10k-nord.toml;
    ".config/rofi/config.rasi".source = ./rofi/config.rasi;
    ".config/rofi/nord.rasi".source = ./rofi/nord.rasi;
    ".config/tmux/tmux.conf".source = ./tmux/tmux.conf;
    ".config/zed/settings.json".source = ./zed/settings.json;
    ".config/zellij/config.kdl".source = ./zellij/config.kdl;
    ".ideavimrc".source = ./ideavim/.ideavimrc;
  };
}
