{
    inputs = {
        nixpkgs = { 
            url = "github:nixos/nixpkgs/nixos-unstable";
        };

        nixpkgs-master = {
            url = "github:nixos/nixpkgs/master";
        };

        home-manager = {
            url = "github:nix-community/home-manager/";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        chaotic = {
            url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
        };

        disko = {
            url = "github:nix-community/disko";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = inputs@{ self, nixpkgs, home-manager, disko, chaotic, ... }:
        let 
            system = "x86_64-linux";
            pkgs = import nixpkgs { inherit system; };
        in {
            nixosConfigurations = {
                s0me-nix = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs system; };
                    modules = [ ./configuration.nix ];
                };
            };
        };
}
