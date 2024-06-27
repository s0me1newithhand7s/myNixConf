{ config, lib, pkgs, modulesPath, ... }:

{
    imports =
    [ (modulesPath + "/installer/scan/not-detected.nix") ];
    
    boot = {      
        extraModulePackages = [ ];                                # boot options
        kernelPackages = pkgs.linuxPackages_latest;               # kernel version and type to boot
        kernelModules = [ ];                             # kernel modules, like drivers
        loader = {                              # options for bootloaders
            efi = {                             # basic efi options needed for UEFI systems
                canTouchEfiVariables = true;
                efiSysMountPoint = "/boot";
            };
            grub = {                            # GRUB bootloader options, see https://wiki.nixos.org/wiki/GNU_GRUB for more
		configurationLimit = 5;         # limits of generation
                default = "0";                  # default generation in list 
                # device = ;                     # option for legacy boot
                # devices = [ ... ];             # also option for legacy boot
                efiInstallAsRemovable = false;  # basically grub-install with --removable
                efiSupport = false;             # EFI support for GRUB is you need it
                enable = false;                 # toggle for enabling GRUB
                font = "${pkgs.grub2}/share/grub/unicode.pf2"; 
                fontSize = 16;                  # font options, package font and package size
                # theme = ;                      # GRUB theme, if default is not suitable for you
                # users = { ... };               # option for hashed password thing
            };
            systemd-boot = {                    # systemd-boot options, see https://wiki.nixos.org/wiki/Bootloader for more
		configurationLimit = 5;         # limits of generation
                enable = true;                  # toggle for enabling systemd-boot
                memtest86 = {                   # options for memtest86 or https://www.memtest86.com/
                    enable = true;              
                    sortKey = "o_memtest86";    
                };
                netbootxyz = {                  # options for netbootxyz or https://netboot.xyz/
                    enable = false;
                    sortKey = "o_netbootxyz";
                };
                sortKey = "nixos";              # https://uapi-group.org/specifications/specs/boot_loader_specification/#sorting
            };
            raspberryPi = {                     # RPi loader options, or smth that i really scared of 
                enable = false;                 # toggle for enabling RPi bootloader
                uboot = {                       # RPi uboot, just read https://wiki.nixos.org/wiki/NixOS_on_ARM/Raspberry_Pi 
                    enable = false;             # toggle for enabling uboot
                    configurationLimit = 5;     # limits of generation
                };
                version = "2";                  # version of RPi bootloader, default is 2
            };
        };
        initrd = {
            availableKernelModules = [ ];
            kernelModules = [ ];
        };
        supportedFilesystems = [ ];     # supported FSes modules
    };
}
