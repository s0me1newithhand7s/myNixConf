{ 
    ...
}: {
    networking ={                               # wiki page for NM - https://wiki.nixos.org/wiki/NetworkManager
        networkmanager = {                      # NM options, for more - https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=alpha_asc&type=packages&query=+networking.networkmanager. 
            enable = true;                      # toggle for NM
            dns = "default";                    # dns option for NM
            dhcp = "internal";                  # dhcp option for NM
            wifi = {                            # NM toggles for wireless
                backend = "wpa_supplicant";     # backend behind NM wireless
                macAddress = "preserve";        # you can set macaddress
            };
        };
    };
}