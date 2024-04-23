{ pkgs, ... }:

{
    environment = {
        systemPackages = with pkgs; [               # system-wide packages
            home-manager
            # feel free to add needed pkg here
        ];

        # below is options for disabling packages for DE's

        # budgie.excludePackages = [ ];             
        # cinnamon.excludePackages = [ ];
        # deepin.excludePackages = [ ];
        # gnome.excludePackages =  [ ];
        # lxqt.excludePackages = [ ];
        # mate.excludePackages = [ ];
        # pantheon.excludePackages = [ ];
        # plasma5.excludePackages =  [ ];
        # plasma5.excludePackages =  [ ];
        # xfce.excludePackages = [ ];
    };
}