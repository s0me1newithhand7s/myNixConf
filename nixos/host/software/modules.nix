{
    disabledModules = [
        "./programs/nh.nix"
    ];
    imports = [
        ./nix/nix.nix
        ./nix/nixpkgs.nix
        ./programs/nh.nix
    ];
}
