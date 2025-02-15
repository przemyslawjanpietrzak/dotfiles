{environment, pkgs, ...}:

{
    environment.systemPackages = with pkgs; [
        bun
        biome
        deno
        fnm
        nodejs_22
        pnpm
        yarn-berry
    ];
}
