{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, homebrew-core, homebrew-cask, home-manager }:
  let
    user = "przemyslawbeigert"; 
    configuration = { pkgs, ... }: {

      environment.systemPackages =
        [
          pkgs.bat
          pkgs.dust
          pkgs.fd
          pkgs.fzf
          pkgs.delta
          pkgs.googler
          pkgs.htop
          pkgs.httpie
          pkgs.jq
          pkgs.just
          pkgs.lsd
          pkgs.procs
          pkgs.ripgrep
          pkgs.sd
          pkgs.sshs
          pkgs.tldr
          pkgs.wget
          pkgs.yazi
          pkgs.zoxide
        ];

      services.nix-daemon.enable = true;
      nix.settings.experimental-features = "nix-command flakes";

      programs.zsh.enable = true;  # default shell on catalina
      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 4;

      nixpkgs.hostPlatform = "x86_64-darwin";

      system.defaults = {
        dock.autohide = true;
        dock.tilesize = 8;
        screencapture.location = "~/Pictures/screenshots";
      };

      system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
      };

      homebrew.enable = true;
      homebrew.casks = [

      ];
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#Przemyslaws-MacBook-Air
    darwinConfigurations."Przemyslaws-MacBook-Air" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;

            taps = {
              "homebrew/homebrew-core" = homebrew-core;
              "homebrew/homebrew-cask" = homebrew-cask;
            };

            user = "przemyslawbeigert";
          };
        }
        # home-manager.darwinModule
        # {
        #   home-manager = {
        #     useGlobalPkgs = true;
        #     useUserPackages = true;
        #     # extraSpecialArgs = {
        #     #   inherit inputs;
        #     #   pkgs-zsh-fzf-tab =
        #     #     import inputs.nixpkgs-zsh-fzf-tab { inherit system; };
        #     # };
        #     users.${user} = { ... }:
        #       with inputs; {
        #         imports = [  ];
        #           home.homeDirectory = "/Users/przemyslawbeigert1";
        #           home.stateVersion = "23.05";
        #           home.username = "przemyslawbeigert1";
        #       };
        #   };
        # }
        # home-manager.darwinModules.home-manager {
        #   home-manager.useGlobalPkgs = true;
        #   home-manager.useUserPackages = true;
        #   # home-manager.users.przemyslawbeigert = import ./home.nix;

        #   users.${user} = { ... }:
        #     with inputs; {
        #       imports = [ import ./home.nix ];
        #       home.stateVersion = "23.11";
        #       # from feovim
        #       feovim = {
        #         ideavim.enable = true;
        #         vscode.enable = true;
        #       };
        #     };


                
        # }
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Przemyslaws-MacBook-Air".pkgs;
  };
}
