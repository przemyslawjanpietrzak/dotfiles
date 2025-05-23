{ ... }:
{
  nix-homebrew = {
    autoMigrate = true;
    enable = true;

    user = "przemyslawjanbeigert";
  };
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      # cleanup = "zap";
    };
    brews = [
      "yt-dlp"
    ];
    casks = [
      # # browsers
      "chromium"
      "firefox"

      # # dev tools
      "zed"
      "obsidian"

      # # fonts
      "font-fira-code-nerd-font"

      # # other tools
      "alt-tab"
      "raycast"
      "flux"
      "nordvpn"
      "shottr"
      "keepassxc"
      "slack"

      # netowrk
      "openvpn-connect"

      "spotify"

      # # communicator
      "signal"
      # # "whatsapp"
    ];

  };
}
