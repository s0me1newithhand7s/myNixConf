{  
    ... 
}: {
    networking = {                              # networking options
        # bonds = ;
        # bridges = ;
        hostName = "s0me-nix";                  # hostname for ur PC
        # hostId = "";                          # for ZFS?
        timeServers = [                         # https://wiki.nixos.org/wiki/NTP   
            "0.nixos.pool.ntp.org"
            "1.nixos.pool.ntp.org"
            "2.nixos.pool.ntp.org"
            "3.nixos.pool.ntp.org"
        ];
    };
}
