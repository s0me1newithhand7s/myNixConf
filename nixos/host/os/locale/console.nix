{ 
    pkgs,
    ...
}: {
    console = {                                 # vconsole locales
        # colors = [  ];                        # vconsole colors, but i have starship for it
        # enable = true;                        # toggle for enabling vconsole
        # font = "";
        # keyMap = "us";                        # keymap for vconsole
        useXkbConfig = true;                    # toggle for using xkb config
    }; 
}
