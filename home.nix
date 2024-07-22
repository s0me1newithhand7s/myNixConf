{
    pkgs, 
    ...
}:

{
    imports = [
        ./hm/modules.nix 
    ];

    home = {
        username = "nixusr";             # username
        homeDirectory = "/home/nixusr";  # home directory
        stateVersion = "24.05";          
        shellAliases = {
            f = "fastfetch";
        };

        packages = with pkgs; [
            fastfetch
            # feel free to add more here
        ];

        keyboard = {
            layout = "us, ru";           # us and ru layouts
            options = "grp:caps_toggle"; # caps to change it
            variant = "qwerty";          # keyboard layout
        };
    };
}
