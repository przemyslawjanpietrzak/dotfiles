{ system, ... }:

{
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    taps = [
      # "homebrew/cask"
    ];
    brews = [
    ];
    casks = [
      # browsers
      "brave-browser"
      "chromium"
      "firefox"

      "nikitabobko/tap/aerospace"

      # devtools
      "webstorm"
      "pycharm-ce"
      "zed"
      "ghostty"
      "obsidian"
      "opencode"

      # fonts
      "font-fira-code-nerd-font"
      "font-hack-nerd-font"

      # other
      "alt-tab"
      "raycast"
      "aldente"
      "flux-app"
      "nordvpn"
      "shottr"
      "keepassxc"
      "slack"
      "balenaetcher"
      "caffeine"
      "nextcloud"
      "sketchybar"

      # network
      "openvpn-connect"
      "tailscale"

      # media
      "spotify"
      "vlc"
      "signal"
      "whatsapp"
      "steam"
      "transmission"
    ];
  };
}
