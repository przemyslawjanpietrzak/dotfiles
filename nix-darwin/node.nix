{environment, pkgs, ...}:

{
    environment.systemPackages = with pkgs; [
        bun
        biome
        deno
        fnm
        nodejs_20
        pnpm
        yarn-berry
    ];
}
