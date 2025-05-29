{ config, home, ... }:

{

  home.file = {
    ".config/bat/config".source = ../common/bat/config;
    ".config/fish/config.fish".source = ../common/fish/config.fish;
    ".config/git/config".source = ../common/git/config;
    ".config/git/ignore".source = ../common/git/ignore;
    ".config/i3/config".source = ../common/i3/config;
    ".config/lazygit/config.yml".source = ../common/lazygit/config.yml;
    ".config/lvim/config.lua".source = ../common/lvim/config.lua;
    ".config/ohmyposh/pk10-nord.toml".source = ../common/ohmyposh/p10k-nord.toml;
    ".config/rofi/config.rasi".source = ../common/rofi/config.rasi;
    ".config/rofi/nord.rasi".source = ../common/rofi/nord.rasi;
    ".config/zed/settings.json".source = ../common/zed/settings.json;
    ".config/zellij/config.kdl".source = ../common/zellij/config.kdl;
    ".ideavimrc".source = ../common/ideavim/.ideavimrc;
  };
}
