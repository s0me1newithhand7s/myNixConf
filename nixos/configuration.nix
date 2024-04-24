# nixos config

{ config, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./users.nix
        ./host.modules/modules.nix
        ./general.modules/modules.nix
    ];



    system.stateVersion = "24.05"; # DO NOT FUCKING TOUCH.
}
