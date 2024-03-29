# It's recommended to edit this file

{ config, lib, pkgs, ... }:

{
    # Don't forget to use 'passwd' after editing!
    users.users.hand7s = {
        isNormalUser = true;
        extraGroups = [ 
            "wheel" 
        ]; 
        packages = with pkgs; [
            google-chrome
            discord
            telegram-desktop
        ];
    };
}