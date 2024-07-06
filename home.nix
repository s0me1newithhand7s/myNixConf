{ config, pkgs, ...}:

{
    import = [  
        ./home.modules/modules.nix
    ];

    home = {
        username = "hand7s";
        homeDirectory = "/home/hand7s";
        stateVersion = "24.05";
        shellAliases = {
            ncg = "nix store gc -v";
        };
        packages = with pkgs; [
            # feel free to add here
        ];
    };
}
