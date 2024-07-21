{
    ...
}: {
    networking = {
                useDHCP = false;                         # DHCP setting. you MUST follow generated hardware-configuration.nix
        dhcpcd = {
            enable = true;                               # useDHCP must be true
            allowInterfaces = [];                        # where from we listen   
            denyInterfaces = [];                         # where from not
            IPv6rs = [];                                 # ipv6 force enabling
            persistent = false;                          # whacy, more here - https://search.nixos.org/options?channel=unstable&show=networking.dhcpcd.persistent&from=0&size=50&sort=alpha_asc&type=packages&query=networking.
            runHook = "";                                # literal shell command after hook runned, man dhcpcd-run-hooks will tell more
            wait = "any";                                # where from we will listen   
            extraConfig = "";                            # extra config
        };
    };
}