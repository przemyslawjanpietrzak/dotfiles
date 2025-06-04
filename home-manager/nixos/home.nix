{ config, home, ... }:

{

  home.file = {
    ".config/bat/config".source = ../configs/bat/config;
    ".config/fish/config.fish".source = ../configs/fish/config.fish;
    ".config/git/config".source = ../configs/git/config;
    ".config/git/ignore".source = ../configs/git/ignore;
    ".config/i3/config".source = ../configs/i3/config;
    ".config/lazygit/config.yml".source = ../configs/lazygit/config.yml;
    # ".config/lvim/config.lua".source = ../configs/lvim/config.lua;
    ".config/lsd".source = ../configs/lsd;
    ".config/ohmyposh/pk10-nord.toml".source = ../configs/ohmyposh/p10k-nord.toml;
    ".config/rofi/config.rasi".source = ../configs/rofi/config.rasi;
    ".config/rofi/nord.rasi".source = ../configs/rofi/nord.rasi;
    ".config/zed/settings.json".source = ../configs/zed/settings.json;
    ".config/zellij/config.kdl".source = ../configs/zellij/config.kdl;
    ".ideavimrc".source = ../configs/ideavim/.ideavimrc;
  };
}
