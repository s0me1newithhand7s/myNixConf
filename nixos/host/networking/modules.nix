{
    disabledModules = [ 
        "./proxy.nix"
    ];
    imports = [
        ./dhcpd.nix
        ./firewall.nix
        ./networking.nix
        ./nm.nix
        ./proxy.nix
    ];
}