{ config, lib, pkgs, ... }:

{
    hardware = {
        # cpu = { };                # whacky and kinda hw-exclusive option. feel free to just copy-paste it from ur hardware-configuration.nix
        graphics = {                  # cruical part for proper GPU working
	        enable = true;
            	enable32Bit = true;
        };
     };
}
