# nixos config

{ config, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./users.nix
        ./home.modules/modules.nix
        ./host.modules/modules.nix
        ./general.modules/modules.nix
    ];



    system.stateVersion = "23.11"; # DO NOT FUCKING TOUCH.
}
