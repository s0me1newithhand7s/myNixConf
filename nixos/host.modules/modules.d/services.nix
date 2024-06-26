{ pkgs, ... }:

{
    services = {                                     # nixos service options
        avahi = {                                    # more about avahi - https://avahi.org/
            # allowInterfaces = [];
            enable = false;                          # toggle for enabling avahi service
            nssmdns4 = false;
            openFirewall = false;
            # package = [ ... ];
        };
        printing = {                                 # printing, more here - https://wiki.nixos.org/wiki/Printing
            enable = false;                          # toggle for enabling printing service
            # drivers = [ ... ];
            # package with pkgs; = [ ... ]
        };
        openssh = {                                  # openssh options
            enable = false;                          # toggle for enabling openssh 
            allowSFTP = true;                        # toggle for enabling SFTP  
        };
        xserver = {                                  # xserver options
            enable = true;                           # toggle for enabling xserver
            videoDrivers = [ ];                      # drivers module
            excludePackages = [ ];                   # option for excluding some packages from basic xserver
            synaptics = {
                enable = false;
                # about synaptics you'll need read by yourself
            };
            wacom = {
                enable = false;
                # wacom drivers needed to be configured by yourself
            };
            xkb = {                                  # xkb options
                layout = "us, ru";                   # layouts
                variant = "qwerty";                # if your keyboard isn't QWERTY - set it here
                options = "grp:caps_toggle";      # switching method for xkb
            };
        };
        libinput = {                             # libinput options
            enable = true;                          
            mouse = {                            # for mouse 
                accelProfile = "flat";
                accelSpeed = "-1.0";
                buttonMapping = "1 2 3 4 5 6 7 8 9"; # mapping for buttons
                horizontalScrolling = true;
                leftHanded = false;
                naturalScrolling = true;
            };
            touchpad = {                         # for touchpad
                accelProfile = "adaptive";
                accelSpeed = "-1.0";
                buttonMapping = "1 2 3 4 5 6 7 8 9"; # mapping for buttons
                clickMethod = "clickfinger";
                leftHanded = false;      
            };
        };
    };
}

