{
    services = {
        displayManager = {
            sddm.enable = false;
            autoLogin.enable = false;
        };
        xserver = {
            enable = true;
            displayManager = {
                gdm.enable = false;
                lightdm.enable = false;
                startx.enable = false;
                xpra.enable = false;
            };
        };
    };
}