# Config for server

{ config, lib, pkgs, ... }:

{
    imports = [
        # in case you need your custom systemd service
        # ./server.d/servicename-daemon.nix
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
        hostName = "s0meserv1-nix";
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
    
    time.timeZone = "Europe/Moscow";


    # Packages
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs; [
        helix
        docker
        docker-compose
        # kompose
        # kubectl
        # kubernetes 
    ];


    # Services
    virtualisation.docker.enable = true;
    services.openssh.enable = true;
}
