# Config for (my) desktop

{ config, lib, pkgs, ... }:

{
    imports = [
        # ./desktop.d/de.nix
        # ./desktop.d/wm.nix
        # ./desktop.d/amd.nix
        # ./desktop.d/nvidia.nix
    ];


    # Networking
    networking.hostName = "s0mePC-nix";
    networking.wireless.enable = false;
    networking.networkmanager.enable = true;
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    # networking.firewall.enable = enable;
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    time.timeZone = "Europe/Moscow";


    # Packages
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs; [
        helix
        # foot
        # st
        # feel free to add needed pkg here
    ];

    # Keeb and smth like it
    i18n.defaultLocale = "en_US.UTF-8";
    console = {
        font = "Lat2-Terminus16";
        keyMap = "us";
         useXkbConfig = false;  
    };


    # Services
    services.printing.enable = false;
    # services.printing.drivers = [ YOUR_DRIVER ];
    # hardware.printers = {
    #    ensurePrinters = [ ... ];
    # };
    services.avahi = {
        enable = false;
        nssmdns4 = false;
        openFirewall = false;
    };


}
