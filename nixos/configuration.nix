# nixos config

{ config, ... }:

{
    imports = [
        ./users.nix
        ./host.modules/modules.nix
        ./general.modules/modules.nix
    ];



    system.stateVersion = "24.05"; # DO NOT FUCKING TOUCH.
}
