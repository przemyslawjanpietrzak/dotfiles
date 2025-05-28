{ system, ... }:

{
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    taps = [
      "homebrew/cask"
    ];
    brews = [];
    casks = [
      # browsers
      "brave-browser"
      "chromium"
      "firefox"
      # devtools
      "zed"
      "ghostty"
      "obsidian"
      # other
      "font-fira-code-nerd-font"
      "font-hack-nerd-font"

      "alt-tab"
      "raycast"
      "flux"
      "nordvpn"
      "shottr"
      "keepassxc"
      "slack"
      # network
      "openvpn-connect"
      # media
      "spotify"
      "vlc"
      "signal"
    ];
  };
}
