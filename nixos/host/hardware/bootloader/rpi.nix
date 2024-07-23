{ 
    ...
}: {
    boot = {
        loader = {
            raspberryPi = {                     # RPi loader options, or smth that i really scared of 
                enable = false;                 # toggle for enabling RPi bootloader
                uboot = {                       # RPi uboot, just read https://wiki.nixos.org/wiki/NixOS_on_ARM/Raspberry_Pi 
                    enable = false;             # toggle for enabling uboot
                    configurationLimit = 5;     # limits of generation
                };
                version = "2";                  # version of RPi bootloader, default is 2
            };
        };
    };
}