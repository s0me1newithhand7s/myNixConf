{
    pkgs,
    ...
}: {
    fonts = {                               # wiki page for fonts - https://wiki.nixos.org/wiki/Fonts
        fontDir = {
            # decompressFonts 
            enable = false;
        };
        fontconfig = {
            enable = true;                  # more options - https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=alpha_asc&type=packages&query=fonts.fontconfig
        };
        packages =  with pkgs; [
            
        ];
    };
}
