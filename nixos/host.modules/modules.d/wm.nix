# wm and wayland comositors options

{
    programs = {
        hyprland.enable = false;                # toggle for enabling hyprland
        labwc.enable = false;                   # toggle for enabling LabWC
        river.enable = false;                   # toggle for enabling River
        sway.enable = false;                    # toggle for enabling Sway
        wayfire.enable = false;                 # toggle for enabling WayFire
    };
    services = {
        xserver = {
            windowManager = {                   # toggles for xorg WMs (i ain't write it all. no )
                afterstep.enable = false;
                awesome.enable = false;
                berry.enable = false;
                bspwm.enable = false;
                clfswm.enable = false;
                cwm.enable = false;
                dwm.enable = false;
                e16.enable = false;
                evilwm.enable = false;
                exwm.enable = false;
                fluxbox.enable = false;
                fvwm2.enable = false;
                fvwm3.enable = false;
                hackedbox.enable = false;
                herbstluftwm.enable = false;
                hypr.enable = false;
                i3.enable = false;
                icewm.enable = false;
                jwm.enable = false;
                katriawm.enable = false;
                leftwm.enable = false;
                lwm.enable = false;
                metacity.enable = false;
                mlvwm.enable = false;
                mwm.enable = false;
                nimdow.enable = false;
                notion.enable = false;
                openbox.enable = false;
                pekwm.enable = false;
                qtile.enable = false;
                ragnarwm.enable = false;
                ratpoison.enable = false;
                sawfish.enable = false;
                smallwm.enable = false;
                spectrwm.enable = false;
                stumpwm.enable = false;
                tinywm.enable = false;
                twm.enable = false;
                windowlab.enable = false;
                windowmaker.enable = false;
                wmderland.enable = false;
                wmii.enable = false;
                xmonad.enable = false;
                yeahwm.enable = false;
            };
        };
    };
}
