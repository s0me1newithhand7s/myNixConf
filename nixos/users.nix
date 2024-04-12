# It's recommended to edit this file

{ pkgs, ... }:

{
    # Don't forget to change `initialPassword` to yours!
    users.users.hand7s = {
        description = "hand7s aka s0me1newithhand7s";
        extraGroups = [ "wheel" ]; 
        isSystemUser = true;
        isNormalUser = true;
        initialPassword = "password";
        packages = with pkgs; [
            google-chrome
            discord
            telegram-desktop
        ];
    };
}
