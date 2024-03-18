# Config for (my) server

{ config, lib, pkgs, ... }:

{
    imports = [
        # in case you need your custom systemd service
        # ./server.d/servicename-daemon.nix
    ];

    # Networking
    networking.hostName = "s0meserv1-nix";
    networking.wireless.enable = false;
    networking.networkmanager.enable = true;
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    # networking.firewall.enable = enable;
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedTCPPortRanges = { ... };
    # networking.firewall.allowedUDPPorts = [ ... ];   
    # networking.firewall.allowedUDPPortRanges = { ... };
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
