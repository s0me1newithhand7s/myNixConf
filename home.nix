{ config, pkgs, ...}:

{
    imports = [  
        ./hm/modules.nix
    ];

    home = {
        username = "hand7s";
        homeDirectory = "/home/hand7s";
        stateVersion = "24.05";
        shellAliases = {

            ncg = "nix store gc -v";
            f = "fastfetch";
        };

        packages = with pkgs; [
            # feel free to add here
        ];

        keyboard = {
            layout = "us, ru";
            options = "grp:caps_toggle";
            variant = "qwerty";
        };
    };
}
