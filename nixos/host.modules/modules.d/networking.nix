{
    networking = {                              # networking options
        # bonds = ;
        # bridges = ;
        firewall = {                            # firewall options
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
        hostName = "s0me-nix";                  # hostname for ur PC
        networkmanager = {                      # NM options
            enable = true;                      # toggle for NM
            dns = "default";                    # dns option for NM
            wifi = {                            # NM toggles for wireless
                backend = "wpa_supplicant";     # backend behind NM wireless
                macAddress = "preserve";        # you can set macaddress
            };
        };
        # proxy = {                             # proxy things
            # allProxy = ;
            # default = ;
            # ftpProxy = ;
            # httpProxy = ;
            # httpsProxy = ;
            # noProxy = ;
            # rsyncProxy = ;
        # };
        useDHCP = false;                         # DHCP setting. you MUST follow generated hardware-configuration.nix
    };
    time = {                                    # basically TZ and HW clocks
        timeZone = "Europe/Moscow";             # TZ, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
        hardwareClockInLocalTime = false;       # keep the hardware clock in local time instead of UTC in case being "toggle"
    };
}
