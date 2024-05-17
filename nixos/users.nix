{ pkgs, ... }:

{
    users = { 
        mutableUsers = true;                                    # if FALSE you'll need to add every new users with their passwords here.
        users = {
            hand7s = {
                description = "hand7s aka s0me1newithhand7s";   # description for use xd
                extraGroups = [ "wheel" ];                      # user groups
                isSystemUser = false;                           # either this
                isNormalUser = true;                            # or this must be true
                initialPassword = "password";                   # password for user
                packages = with pkgs; [                         # user's packages
                    
                ];
            };
        };
    };
}
