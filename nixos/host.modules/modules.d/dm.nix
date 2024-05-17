{
    services = {
        displayManager = {
            sddm.enable = false;            # toggle for SDDM  
            autoLogin.enable = false;       # autologin, for security purposes i DO NOT recommend toggle it
        };
        xserver = {
            displayManager = {
                gdm.enable = false;         # toggle for GDM
                lightdm.enable = false;     # toggle for LightDM, default DM
                startx.enable = false;      # toggle for startx in case you'll need it
                xpra.enable = false;        # toggle for xpra, lmao
                sx.enable = false;          # sx is pseudo DM, but it is toggle for it
            }; 
        };
    };
}
