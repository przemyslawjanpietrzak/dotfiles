{ system, ... }:

{
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    taps = [
      "homebrew/cask"
    ];
    brews = [
    ];
    casks = [
      # browsers
      "brave-browser"
      "chromium"
      "firefox"


      # devtools
      "zed"
      "ghostty"
      "obsidian"

      # fonts
      "font-fira-code-nerd-font"
      "font-hack-nerd-font"

      # other
      "alt-tab"
      "raycast"
      "aldente"
      "flux"
      "nordvpn"
      "shottr"
      "keepassxc"
      "slack"
      "balenaetcher"
      "caffeine"
      "nextcloud"

      # network
      "openvpn-connect"

      # media
      "spotify"
      "vlc"
      "signal"
      "whatsapp"
    ];
  };
}
