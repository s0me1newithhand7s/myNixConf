{
    disabledModules = [
        "./programs/steam.nix"
    ];
    imports = [
        ./nix/nix.nix
        ./nix/nixpkgs.nix
        ./programs/steam.nix
        ./programs/nh.nix
    ];
}