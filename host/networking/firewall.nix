{
    ...
}: {
    networking = {
        firewall = {                            # firewall options, there is MUCH more, but this is more often cases
            allowPing = false;                   # you can restrict ping to your host in case you'll need
            # allowedTCPPorts = [ ... ];        # allowed ports TCP and UDP, below option for ranges
            # allowedTCPPortRanges = [ 
                # { from = ...; to = ...; }
            # ];
            # allowedUDPPorts = [ ... ]; 
            # allowedUDPPortRanges = [ 
                # { from = ...; to = ...; }
            # ];
            enable = true;                      # toggle for enabling firewall
        };
    };
}