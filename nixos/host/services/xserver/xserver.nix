{ 
    pkgs, 
    ... 
}: {
    services = {                                     # nixos service options
        xserver = {                                  # xserver options
            display = 0;
            enable = true;                           # toggle for enabling xserver
            videoDrivers = [ ];                      # drivers module
            excludePackages = with pkgs; [ ];        # option for excluding some packages from basic xserver
            tty = 7;
        };
    };
}

