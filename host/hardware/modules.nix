{
    disabledModules = [ 
        "./drivers/amd.nix"
        "./drivers/nvidia.nix"
        "./drivers/intel.nix"
        "./bootloader/grub.nix"
        "./bootloader/rpi.nix"
    ];
    imports = [
        ./disks.nix
        ./hardware.nix
        ./drivers/amd.nix
        ./drivers/intel.nix
        ./drivers/nvidia.nix
        ./bootloader/boot.nix
        ./bootloader/grub.nix
        ./bootloader/rpi.nix
        ./bootloader/sysd-boot.nix
    ];
}