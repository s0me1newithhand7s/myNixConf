{ 
    pkgs,
    config,
    ... 
}: {                                                 # wont be bad - https://wiki.nixos.org/wiki/Printing
    services = {                                     
        avahi = {                                    # more about avahi - https://avahi.org/
            # allowInterfaces = [];
            allowPointToPoint = false;
            browseDomains = [];                      
            # denyInterfaces = [];
            domainName = "local";
            extraConfig = "";
            extraServiceFiles = {};
            hostName = config.networking.hostName;
            enable = true;                          
            nssmdns4 = false;
            nssmdns6 = false;
            ipv4 = true;
            ipv6 = false;
            openFirewall = false;
            # package = [ ... ];
            publish = {  
                addresses = false;
                domain = false;
                enable = false; 
                hinfo = false;
                userServices = false;
                workstation = false;
            };
            reflector = false;
            wideArea = true;
        };
    };
}
