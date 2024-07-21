{ 
    pkgs, 
    ... 
}: {
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
}
