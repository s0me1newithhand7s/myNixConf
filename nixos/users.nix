# It's recommended to edit this file

{
    # Don't forget to change `initialPassword` to yours!
    users.users.hand7s = {
        isNormalUser = true;
        initialPassword = "password";
        extraGroups = [ "wheel" ]; 
        packages = with pkgs; [
            google-chrome
            discord
            telegram-desktop
        ];
    };
}
