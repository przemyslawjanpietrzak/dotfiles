{
  config,
  home-manager,
  pkgs,
  ...
}:

{
  home-manager.users.przemyslawjanbeigert.home.file = {
    ".config/aerospace/aerospace.toml".source = ../home-manager/configs/aerospace/aerospace.toml;
    ".config/bat/config".source = ../home-manager/configs/bat/config;
    ".config/fish/config.fish".source = ../home-manager/configs/fish/config.fish;
    ".config/fish/functions".source = ../home-manager/configs/fish/functions;
    "Library/Application\ Support/jesseduffield/lazygit/config.yml".source =
      ../home-manager/configs/lazygit/config.yml;
    ".config/lsd".source = ../home-manager/configs/lsd;
    ".config/ohmyposh/pk10-nord.toml".source = ../home-manager/configs/ohmyposh/p10k-nord.toml;
    ".config/sketchybar".source = ../home-manager/configs/sketchybar;
    ".config/ghostty".source = ../home-manager/configs/ghostty;
    ".config/zellij/config.kdl".source = ../home-manager/configs/zellij/config.kdl;
    ".ideavimrc".source = ../home-manager/configs/ideavim/.ideavimrc;

    ".config/git/config".source = ../home-manager/configs/git/config;
    ".config/git/ignore".source = ../home-manager/configs/git/ignore;

    ".config/zed/settings.json".source = ../home-manager/configs/zed/settings.json;
    ".config/zed/themes/nord.json".source = ../home-manager/configs/zed/themes/nord.json;

    ".config/nvim".source = ../home-manager/configs/nvim;
  };


}
