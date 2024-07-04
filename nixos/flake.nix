# About flakes by hand7s
# flakes is core of nixos and nix
# flakes contains inputs with links
# and outputs with args, modules
# with flakes you can declare everything
# basically, you can have all your nixos inside flake.nix
# in my flake.nix you can find links to great flakes, like:
# nixgl - helps with OpenGL apps nix outside of nixos
# nix-darwin - nixpkgs for darwin (mac)
# chaotic-nyx - chaotic-aur for nix
# more info you can find in flake urls itself!

{
    description = "actually, stock but good reference flake xd";
    
    inputs = {
        nixpkgs = { 
            url = "github:nixos/nixpkgs/nixos-unstable";
        };

        nixpkgs-master = {
            url = "github:nixos/nixpkgs/master";
        };

        nix-gaming = {
            url = "github:fufexan/nix-gaming";
        };

        nix-darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        nixgl = {
            url = "github:nix-community/nixGL";
        };

        nur = {
            url = "github:nix-community/NUR";
        };

        agenix = {
            url = "github:ryantm/agenix";
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

        sops-nix = {
            url = "github:Mic92/sops-nix";
        };

        stylix = {
            url = "github:danth/stylix";
        };
    };

outputs = { self, nixpkgs, chaotic, ... }@inputs:
    {
        nixosConfigurations = {
            s0me-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [  ];
            };
        };
        darwin-configuration = {
            s0me-nix = nix-darwin.lib.darwinSystem {
                modules = [ ./configuration.nix ];
            };
        };
    };
}
