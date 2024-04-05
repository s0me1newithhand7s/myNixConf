# NixOS / Nix config by hand7s aka s0me1newithhand7s

{ config, lib, pkgs, inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./users.nix
        #./conf.d/desktop.nix
        #./conf.d/server.nix
    ];

    nix.settings = {
        allowed-users = [ "hand7s" "root" ];
        experimental-features = [ "nix-command" "flakes" ];
        sandbox = true;
        trusted-users = [ "hand7s" "root" ];
    };

    # Boot options
    boot = {
        devShmSize = "50%";
        devSize = "5%";
        kernel = {
            enable = true;
            # randstructSeed = " ... ";
            # sysctl = [ ... ];
        };
        # kernelModules = [ ... ];
        # kernelParams = [ ... ];
        loader = {
            efi = {
                canTouchEfiVariables = true;
                efiSysMountPoint = "/boot";
            };
            grub = {
                default = "0";
                # device = ;
                # devices = [ ... ];
                efiInstallAsRemovable = false;
                efiSupport = false;
                enable = false;
                font = "${pkgs.grub2}/share/grub/unicode.pf2";
                fontSize = 16;
                # theme = ;
                # users = { ... };
            };
            systemd-boot = {
                enable = true;
                memtest86 = {
                    enable = true;
                    sortKey = "o_memtest86";
                };
                netbootxyz = {
                    enable = false;
                    sortKey = "o_netbootxyz";
                };
                sortKey = "nixos";
            };
            raspberryPi = {
                enable = false;
                version = "2";

            };
            runSize = "25%";
            tmp = {
                cleanOnBoot = false;
                tmpfsSize = "50%";
                useTmpfs = false;
            };
            zfs = {
                enabled = false;
            };
        };
    };

    system.stateVersion = "23.11"; # DO NOT FUCKING TOUCH.
}
