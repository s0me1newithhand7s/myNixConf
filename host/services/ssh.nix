{ 
    ... 
}: {
    services = {                                     # nixos service options
        openssh = {                                  # openssh options
            enable = true;                           # toggle for enabling openssh 
            allowSFTP = true;                        # toggle for enabling SFTP
            # knownHosts = [];                       # basically known host :D
            listenAddresses = [ ];                   # addresses to listen
            ports = [                                # ports, better to not be 22
                2345
            ];
            settings = {                             # some settings
                PermitRootLogin = "no";              # prevents from $ ssh root@host 
                X11Forwarding = true;                # allows $ ssh host -X pkg
            };
        };
    };
}