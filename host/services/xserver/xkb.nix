{
    ...
}: {
    services = {                                     
        xserver = { 
            xkb = {                                  # xkb options
                layout = "us, ru";                   # layouts
                variant = "qwerty";                  # if your keyboard isn't QWERTY - set it here
                options = "grp:caps_toggle";         # switching method for xkb
                extraLayouts = { };                  # https://search.nixos.org/options?channel=unstable&show=services.xserver.xkb.extraLayouts&from=0&size=50&sort=alpha_asc&type=packages&query=xkb.
                # dir = "";                          # -xkbdir but nixos :D 
            }; 
        };
    };
}