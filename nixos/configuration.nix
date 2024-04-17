# nixos config

{ config, lib, pkgs, inputs, ... }:

{
    imports = [
        inputs.home-manager.nixosModules.home-manager
        ./hardware-configuration.nix
        ./users.nix
        #./conf.d/desktop.nix
        #./conf.d/server.nix
    ];

    # nixos and nix daemon settings
    nix.settings = {
        allowed-users = [ "hand7s" "root" ];
        experimental-features = [ "nix-command" "flakes" ];
        sandbox = true;
        trusted-users = [ "hand7s" "root" ];
    };

    # hm stuff
    home-manager = {
        extraSpecialArgs = { inherit inputs; };
        users = {
            hand7s = import ./home.nix;
        };
    };

    # boot options
    boot = {
        devShmSize = "50%";
        devSize = "5%";
        runSize = "25%";
        isContainer = false;
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
            tmp = {
                cleanOnBoot = false;
                tmpfsSize = "25%";
                useTmpfs = false;
                
            };
            raspberryPi = {
                enable = false;
                version = "2";

            };
        };
    };

    system.stateVersion = "23.11"; # DO NOT FUCKING TOUCH.
}
