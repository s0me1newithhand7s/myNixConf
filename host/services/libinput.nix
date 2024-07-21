{
    ...
}: {
    services = {
        libinput = {                             # libinput options
            enable = true;                       # toggle for it    
            mouse = {                            # for mouse 
                accelProfile = "flat";
                accelSpeed = "-1.0";
                buttonMapping = "1 2 3 4 5 6 7 8 9"; # mapping for buttons
                horizontalScrolling = true; 
                leftHanded = false;                  # swaps LMB and RMB
                naturalScrolling = true;
            };
            touchpad = {                         # for touchpad
                accelProfile = "adaptive";
                accelSpeed = "-1.0";
                buttonMapping = "1 2 3 4 5 6 7 8 9"; # mapping for buttons
                clickMethod = "clickfinger";
                leftHanded = false;                 # swaps LB and RB
            };
        };
    };
}