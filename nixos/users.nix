# It's recommended to edit this file

{
    # Don't forget to change `initialPassword` to yours!
    users.users.hand7s = {
        description = "hand7s aka s0me1newithhand7s"
        extraGroups = [ "wheel" ]; 
        group = [ "docker" ];
        isNormalUser = true;
        initialPassword = "password";
        packages = with pkgs; [
            google-chrome
            discord
            telegram-desktop
        ];
    };
}
