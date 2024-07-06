{ config, pkgs, ... }:

{
    nixpkgs = {                             # nixpkgs options
        config = { 
            allowUnfree = true;             # allows unfree pkgs
            allowBroken = false;            # restricts broken pkgs
        };
        overlays = [ ];                     # overlays in case you have
        system = "x86_64-linux";            # system type
        hostPlatform = "x86_64-linux";      # platform type
    };
}