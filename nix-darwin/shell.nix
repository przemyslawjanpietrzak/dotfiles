{ environment, programs, ... }:

{
  environment = {
    variables = {
      "FZF_DEFAULT_OPTS" = "--height 40% --layout reverse --border";
      "FZF_TMUX" = "1";
      "EDITOR" = "nvim";
      "COLORTERM" = "truecolor";
      "PROMPT_COMMAND" = "history -a; history -n";
    };
  };

  programs = {
    fish.enable = true;
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

      "pn" = "pnpm";
      "lg" = "lazygit";

      "pping" = "prettyping";
    };
  };
}
