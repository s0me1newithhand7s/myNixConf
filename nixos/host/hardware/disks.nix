{ 
    ... 
}: {
    fileSystems = {
        "/" = { 
            device = "/dev/disk/by-label/root";
            # fsType = " ";
        };

        "/boot" = {
            device = "/dev/disk/by-label/boot";
            fsType = "vfat";
            options = [ "fmask=0022" "dmask=0022" ];
        };
    };

    swapDevices = [ 
        {
            # device = "/dev/disk/by-label/swap";
        }
    ];
}
