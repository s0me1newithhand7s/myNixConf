# Config for (my) desktop

{ config, lib, pkgs, ... }:

{
    imports = [
        # ../desktop.d/de.nix
        # ../desktop.d/wm.nix
    ];


    # Networking
    networking = {
        # bonds = ;
        # bridges = ;
        firewall = { 
            allowPing = true;
            # allowedTCPPorts = [ ... ];
            # allowedTCPPortRanges = [ 
                # { from = ...; to = ...; }
            # ];
            # allowedUDPPorts = [ ... ]; 
            # allowedUDPPortRanges = [ 
                # { from = ...; to = ...; }
            # ];
            enable = true;
        };
        hostName = "s0mePC-nix";
        networkmanager = {
            enable = true;
        };
        # proxy = {
            # allProxy = ;
            # default = ;
            # ftpProxy = ;
            # httpProxy = ;
            # httpsProxy = ;
            # noProxy = ;
            # rsyncProxy = ;

        # };
        wireless = {
            enable = false;
        };
    };  


    # Packages
    nixpkgs.config.allowUnfree = true;
    environment = {
        systemPackages = with pkgs; [
            helix
            # foot
            # st
            home-manager
            # feel free to add needed pkg here
        ];
        # gnome.excludePackages = with pkgs.gnome; [ ];
        # plasma5.excludePackages = with pkgs.libsForQt5; [ ];
        # plasma5.excludePackages = with pkgs.kdePackages; [ ];
    };
    fonts.packages = with pkgs; [
        hack-font
    ];

    # Keeb and smth like it
    i18n.defaultLocale = "en_US.UTF-8";
    console = {
        enable = true;
        font = "HackRegular-16";
        keyMap = "us";
        # packages = [ ... ];
        useXkbConfig = false;  
    };


    # Services
    services = {
        avahi = {
            enable = false;
            nssmdns4 = false;
            openFirewall = false;
        };
        printing = {
            enable = false;
            # drivers = [ ... ];
        };
    };
}
