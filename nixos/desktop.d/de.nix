{
    services.xserver = {
        enable = true;
            displayManager = {
            autoLogin.enable = false;
            gdm.enable = false;
            lightdm.enable = false;
            sddm = {
                enable = false;
                wayland.enable = false;
            };
            startx.enable = false;
            xpra.enable = false;
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
            plasma6.enable = false;
            mate.enable = false;
            posh.enable = false;
            retroarch.enable = false;
            xterm.enable = false;
        };
    };
}
