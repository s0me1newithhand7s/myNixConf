# NixOS / Nix config by hand7s aka s0me1newithhand7s

{ config, lib, pkgs, inputs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./users.nix
        #./conf.d/desktop.nix
        #./conf.d/server.nix
    ];

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # In case you need GRUB2 - edit, i have no need in GRUB2
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;


    system.stateVersion = "23.11"; # DO NOT FUCKING TOUCH.
}
