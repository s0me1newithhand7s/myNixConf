{ 
    pkgs, 
    ... 
}: {
    printing = {                                    # i mean, its simple, but read https://wiki.nixos.org/wiki/Printing
        enable = true;
        allowFrom = [
            "all"
        ];
        browsedConf = "";
        browsing = false;
        clientConf = "";
        cups-pdf = {
            enable = true;
            instances = {
                pdf = {
                    settings = {
                        Out = "\${HOME}/cups-pdf";
                        UserUMask = "0033";
                    };
                };
            };
            defaultShared = false;
            drivers = with pkgs; [ 
                gutenprint 
            ];
            extraConf = "";
            listenAddresses = [
                "localhost:631"
            ];
            openFirewall = true;
            package = with pkgs; [
                cups
            ];
            webInterface = true;
        };
    };
}