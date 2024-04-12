{
    services =
        desktopManager = {
            plasma6.enable = false;
        };
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
        desktopManager = {
            budgie.enable = false;
            cinnamon.enable = false;
            deepin.enable = false;
            enlightenment.enable = false;
            gnome.enable = false;
            kodi.enable = false;
            lumina.enable = false;
            lxqt.enable = false;
            plasma5.enable = false;
            mate.enable = false;
            retroarch.enable = false;
            xterm.enable = false;
        };
    };
}
