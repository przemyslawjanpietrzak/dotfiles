{ environment, programs, ... }:

{
  environment = {
    variables = {
      "FZF_DEFAULT_OPTS" = "--height 40% --layout reverse --border";
      "FZF_TMUX" = "1";
      "EDITOR" = "lvim";
      "COLORTERM" = "truecolor";
      "PROMPT_COMMAND" = "history -a; history -n";
    };
  };

  programs = {
    fish.enable = true;
    fish.interactiveShellInit = ''
      oh-my-posh init fish  --config ~/.config/ohmyposh/pk10-nord.toml | source
    '';
    fish.shellAliases = {
      "cdf" = "cd $(fd --type=d | fzf)";

      "ls" = "lsd";
      "l" = "ls -l";
      "la" = "ls -a";
      "lla" = "ls -la";
      "lt" = "ls --tree";

      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      "vi" = "lvim";
      "lvi" = "lvim";
      "vif" = "vi $(fzf --preview='bat --color=always {}')";

      "lg" = "lazygit";

      "pping" = "prettyping";

      "y" = "yarn";
      "pn" = "pnpm";

      "ggpull" = "git pull";
      "ggpush" = "git push";
      "gfa" = "git fetch --all";

    };
  };
}
