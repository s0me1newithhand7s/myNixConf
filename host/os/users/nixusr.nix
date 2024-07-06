{ 
    pkgs, 
    ... 
}: {
    users = { 
        mutableUsers = true;                                    # if FALSE you'll need to add every new users with their passwords
        users = {
            nixusr = {
                description = "basic user xD";                  # description for use xd
                extraGroups = [ "wheel" ];                      # user groups
                isSystemUser = false;                           # either this
                isNormalUser = true;                            # or this must be true
                initialHashedPassword = "$y$j9T$5L3DsM6L47uZslAt2VF7X/$KebOq4k0jXKmV52tzViPaCm7j0hVPKV9hiJDNuthFE9";
                # ^^^ "pwd" but hashed
                # initialPassword = "pwd";
                packages = with pkgs; [                         # user's packages
                    
                ];
            };
        };
    };
}
