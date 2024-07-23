{
    ...
}: {
    programs = {
        nh = {
            enable = true;
            flake = /etc/nixos/;
            clean = {
                dates = "weekly";
                enable = true;
                extraArgs = "-keep-since 1d";
            };
        };
    };
}