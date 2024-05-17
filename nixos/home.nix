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
            f = "nix run nixpkgs#fastfeth" 
        };
        packages = with pkgs; [
            # feel free to add here
        ];
        pointerCursor = {
            name = "apple-cursor";
            package = with pkgs; [ apple-cursor ];
            size = 32;
            gtk.enable = false;
            x11 = {
                enable = false;
                defaultCursor = "left_ptr";
            };
        };
    };
}
