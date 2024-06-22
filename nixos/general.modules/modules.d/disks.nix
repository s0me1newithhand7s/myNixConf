{ config, lib, pkgs, ... }:

{
    fileSystems = {
        "/" = { 
            device = "/dev/disk/by-label/root";
            # fsType = " ";
        };

        "/boot" = {
            device = "/dev/disk/by-label/boot";
            fsType = "vfat";
        };
    };

    swapDevices = [ ];
}
