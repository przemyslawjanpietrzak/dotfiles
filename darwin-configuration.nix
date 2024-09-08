{ pkgs, ... }:

let
   x  = 42;
in  {
  environment = {
    systemPackages = [];
    variables = {
      "FZF_DEFAULT_OPTS"="--height 40% --layout reverse --border";
      "FZF_TMUX"="1";
      "EDITOR"="nvim";
      "COLORTERM"="truecolor";
      "PROMPT_COMMAND"="history -a; history -n";
    };
    shellAliases = {
      "cdf"="cd $(fd --type=d | fzf)";

      "ls"="lsd";
      "l"="ls -l";
      "la"="ls -a";
      "lla"="ls -la";
      "lt"="ls --tree";

      ".."="cd ..";
      "..."="cd ../..";
      "...."="cd ../../..";

      "vi"="lvim";
      "lvi"="lvim";
      "vif"="vi $(fzf --preview='bat --color=always {}')";

      "pn"="pnpm";
      "lg"="lazygit";

      "pping"="prettyping";
    };
  };

  imports = [ <home-manager/nix-darwin> ];
  services.nix-daemon.enable = true;

  programs.zsh.enable = true;  
  programs.zsh.enableSyntaxHighlighting = true;  

  system = {
    stateVersion = 4;

    defaults = {
      dock = {
        autohide = true;
        expose-group-by-app = true;
        tilesize = 8;
        largesize = 16;
      };
      screencapture.location = "~/Pictures/screenshots";
      NSGlobalDomain = {
        "com.apple.swipescrolldirection" = false;
      };
    };
    
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };


  users.users.przemyslawbeigert = {
    shell = "zsh";
    packages = [
      pkgs.antidote
      pkgs.oh-my-posh
      # cli
      pkgs.atuin
      pkgs.bat
      pkgs.dust
      pkgs.fd
      pkgs.fzf
      pkgs.delta
      pkgs.googler
      pkgs.htop
      pkgs.httpie
      pkgs.prettyping
      pkgs.jq
      pkgs.just
      pkgs.lsd
      pkgs.procs
      pkgs.ripgrep
      pkgs.sd
      pkgs.sshs
      pkgs.sshs
      pkgs.tldr
      pkgs.wget
      pkgs.yazi
      pkgs.zoxide
      # git
      pkgs.lazygit
      pkgs.gh

      pkgs.openssh
    ];
    home = /Users/przemyslawbeigert;
  };

  home-manager.users.przemyslawbeigert = { pkgs, ... }: {
    home.stateVersion = "24.05";
    home.file = {
      ".config/aerospace/aerospace.toml".source = ~/code/open-source/dotfiles/aerospace/aerospace.toml;
      ".config/alacritty/alacritty.toml".source = ~/code/open-source/dotfiles/alacritty/alacritty.toml;
      ".config/git/.gitconfig".source = ~/code/open-source/dotfiles/git/.gitconfig;
      ".config/ohmyposh/pk10-nord.toml".source = ~/code/open-source/dotfiles/ohmyposh/p10k-nord.toml;
      ".config/tmux/tmux.conf".source = ~/code/open-source/dotfiles/tmux/tmux.conf;
      ".config/lvim/config.lua".source = ~/code/open-source/dotfiles/lvim/config.lua;
      ".config/lvim/lazy-lock.json".source = ~/code/open-source/dotfiles/lvim/lazy-lock.json;
    };
  };

  homebrew = {
    enable = true;
    brews = [
      # "docker"
    ];
    casks = [
      # browsers
      "brave-browser"
      "firefox"
      "google-chrome"
      "chromium"

      # dev tools
      "webstorm"
      "vscodium"
      "alacritty"
      "slack"
      "keepassxc"
      "obsidian"
      # "docker"

      # other tools
      "alt-tab"
      # "raycast"
      "shottr"
      "aldente"
      "flux"

      "tunnelblick"
      # "ngrock"

      # media
      "vlc"
      "transmission"
      "spotify"
      
      # communicator
      # "signal"
      "whatsapp"
    ];
  };
}


