{ config, ... }:

{
    i18n = {                                # basic locale config
        defaultLocale = "en_US.UTF-8";      # i prefer english or US / American 
        extraLocaleSettings = {             # locale optinos, see https://wiki.archlinux.org/title/Locale
            LANG = "en_US.UTF-8";
            LANGUAGE = "en_US.UTF-8";
            LC_ALL = "en_US.UTF-8";
            LC_CTYPE = "en_US.UTF-8";
            LC_NUMERIC = "en_US.UTF-8";
            LC_TIME = "en_US.UTF-8";
            LC_COLLATE = "en_US.UTF-8";
            LC_MONETARY = "en_US.UTF-8";
            LC_MESSAGES = "en_US.UTF-8";
            LC_NAME = "en_US.UTF-8";
            LC_ADDRESS = "en_US.UTF-8";
            LC_TELEPHONE = "en_US.UTF-8";
            LC_MEASUREMENT = "en_US.UTF-8";
            LC_IDENTIFICATION = "en_US.UTF-8";
        };
        inputMethod = {
        # enabled = ;
            # see https://search.nixos.org/options?channel=unstable&show=i18n.inputMethod.enabled&from=0&size=50&sort=alpha_asc&type=packages&query=i18n.
        };
        supportedLocales = [
            "C.UTF-8"
            "en_US.UTF-8"
            "ru_RU.UTF-8"
        ];
    };
    console = {                             # vconsole locales
        colors = [  ];                      # vconsole colors, but i have starship for it
        enable = true;                      # toggle for enabling vconsole
        font = "Hack-Regular";              # YES i love hack font
        keyMap = "us";                      # keymap for vconsole
        useXkbConfig = false;               # toggle for using xkb config, do not use it
    };
}