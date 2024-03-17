# Flakes config, kinda messed up bc i'm still new in nix xd

{
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        nixpkgs-master.url. = "github:nixos/nixpkgs/master";

        home-manager = {
            url = "github:nix-community/home-manager/";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = inputs@{ nixpkgs, home-manager, ... }: {
        nixosConfigurations = {
            s0mePC-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                    ./configuration.nix
        

                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.hand7s = import ./home.nix;
                    }
                ];
            };
        };
        nixosConfigurations = {
            s0meserv1-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                    ./configuration.nix
        

                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.hand7s = import ./home.nix;
                    }
                ];
            };
        };
    };
}