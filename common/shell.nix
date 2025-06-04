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
    fish.interactiveShellInit = ''
      oh-my-posh init fish --config ~/.config/ohmyposh/pk10-nord.toml | source
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
      "....." = "cd ../../../..";

      "vi" = "nvim";
      "vif" = "vi $(fzf --preview='bat --color=always {}')";

      "lg" = "lazygit";

      "pping" = "prettyping";

      "ggpull" = "git pull";
      "ggpush" = "git push";
      "gfa" = "git fetch --all";
      "gcb" = "git checkout -b";
      "gss" = "git status";
      "gl" = "git log";
      "glp" = "git log --pretty=format:'%C(yellow)%h%Creset - %C(green)%an%Creset, %ar : %s'";
    };
  };
}
