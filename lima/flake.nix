{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:

    let
      system = "aarch64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      gtk = pkgs.google-cloud-sdk.withExtraComponents (
        with pkgs.google-cloud-sdk.components;
        [
          gke-gcloud-auth-plugin
        ]
      );

    in
    {
      packages.aarch64-linux.hello = nixpkgs.legacyPackages.aarch64-linux.hello;
      packages.aarch64-linux.default = self.packages.aarch64-linux.hello;

      devShells.aarch64-linux.default = pkgs.mkShell {
        env = {
          FZF_DEFAULT_OPTS = "--height 40% --layout reverse --border";
          FZF_TMUX = "1";
          EDITOR = "nvim";
          COLORTERM = "truecolor";
          PROMPT_COMMAND = "history -a; history -n";
        };
        shell = pkgs.fish;
        buildInputs = with pkgs; [
          fish

          atuin
          bat
          choose
          delta
          dust
          entr
          fd
          fzf
          htop
          httpie
          jq
          just
          lsd
          pastel
          prettyping
          procs
          ripgrep
          rm-improved
          sd
          sshs
          tldr
          wget
          yazi
          zellij
          zoxide

          oh-my-posh
          carapace

          # git
          git
          gitflow
          lazygit
          gh

          # ssh
          openssh

          gtk
          gnumake
          postgresql
          kubectl
          kubernetes-helm
          telepresence2
          k9s
          redis

          docker

gcc

          python313
          python312Packages.ipython
          uv
          ruff
          pipx
          pre-commit
          nix-index

        ];

        shellHook = ''
            export NIX_LD="/run/current-system/sw/share/nix-ld/lib/ld.so"
            export NIX_LD_LIBRARY_PATH="/run/current-system/sw/share/nix-ld/lib"
            export LD_LIBRARY_PATH="/run/current-system/sw/share/nix-ld/lib"

            fish
        '';

        postBuild = ''

        '';
      };
    };
}
