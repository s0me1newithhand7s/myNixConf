{ config, lib, pkgs, ... }:

{
    i18n = {                                  # basic locale config
        defaultLocale = "en_US.UTF-8";        # i prefer english or US / American 
        extraLocaleSettings = { };            # locale optinos, see https://wiki.archlinux.org/title/Locale
        inputMethod = {
        # enabled = ;
            # see https://search.nixos.org/options?channel=unstable&show=i18n.inputMethod.enabled&from=0&size=50&sort=alpha_asc&type=packages&query=i18n.
        };
        supportedLocales = [
            "en_US.UTF-8/UTF-8"
            "ru_RU.UTF-8/UTF-8"
        ];
    };
    console = {                               # vconsole locales
        colors = [  ];                        # vconsole colors, but i have starship for it
        enable = true;                        # toggle for enabling vconsole
        font = "Hack-Regular";                # YES i love hack font
        keyMap = "us";                        # keymap for vconsole
        useXkbConfig = false;                 # toggle for using xkb config, do not use it
    };
}
