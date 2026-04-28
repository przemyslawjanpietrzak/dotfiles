{ environment, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # bun
    biome
    # deno
    fnm
    nodejs_24
    pnpm
    # yarn-berry
  ];

  programs = {
    fish.shellAliases = {
      "y" = "yarn";
      "pn" = "pnpm";
      "px" = "pnpm dlx";
    };
  };

}
