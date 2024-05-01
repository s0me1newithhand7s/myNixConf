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
            ff = "clear; nix run nixpkgs#fastfetch";
            nf = "clear; nix run nixpkgs#neofetch";
            pf = "clear; nix run nixpkgs#pfetch-rs";
            htop = "clear; nix run nixpkgs#htop";
            btop = "clear; nix run nixpkgs#btop";
            eza = "eza -la";
        };
        packages = with pkgs; [
            # feel free to add here
        ];
        pointerCursor = {
            name = "apple-cursor";
            package with pkgs; = [ apple-cursor ];
            size = 32;
            gtk.enable = false;
            x11 = {
                enable = false;
                defaultCursor = "left_ptr";
            };
        };
    };
}
