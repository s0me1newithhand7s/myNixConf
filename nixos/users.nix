# users file, add urself / edit existing user 

{ pkgs, ... }:

{
    # don't forget to change `initialPassword` to yours!
    users = { 
        mutableUsers = true;
        # if FALSE you'll need to add every new users with their passwords here.
        users = {
            hand7s = {
                description = "hand7s aka s0me1newithhand7s";
                extraGroups = [ "wheel" ]; 
                isSystemUser = false;
                isNormalUser = true;
                initialPassword = "password";
                packages = with pkgs; [
                    google-chrome
                    discord
                    # vesktop
                    telegram-desktop
                    # _64gram
                    starship
                ];
            };
        };
    };
}
