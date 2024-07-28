{ 
    pkgs, 
    ... 
}: {
    environment = {
        systemPackages = with pkgs; [               # system-wide packages
            # a good start is 'home-manager' package.
            # check flake.nix on home-manager module in outputs!
        ];
        shellAliases = {                            # global aliases
            ngc = "nix store gc -v";
        };
        etc = { };                                  # https://search.nixos.org/options?channel=unstable&show=environment.etc&from=0&size=50&sort=alpha_asc&type=packages&query=environment.
        variables = {
            HELLO = "Hello world!"
        };
     };
}
