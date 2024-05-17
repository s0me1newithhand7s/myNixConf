{ config, lib, pkgs, ... }:

{
    fileSystems."/" = { 
        device = "/dev/disk/by-label/nixos";
        # fsType = " ";       # <= here i reccomend to choose either ext4 or f2fs
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-label/boot";
        fsType = "vfat";
    };

  swapDevices = [ ];
}