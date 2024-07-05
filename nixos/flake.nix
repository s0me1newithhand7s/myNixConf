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

        # nixpkgs-stabele = { }

        nixpkgs-master = {
            url = "github:nixos/nixpkgs/master";
        };

        nixgl = {
            url = "github:nix-community/nixGL";
        };

        nur = {
            url = "github:nix-community/NUR";
        };

        impermanence = {
            url = "github:nix-community/impermanence";
        };

        home-manager = {
            url = "github:nix-community/home-manager/";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        disko = {
            url = "github:nix-community/disko";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        agenix = {
            url = "github:ryantm/agenix";
        };

        chaotic = {
            url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
        };

        nix-darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        nix-gaming = {
            url = "github:fufexan/nix-gaming";
        };

        sops-nix = {
            url = "github:Mic92/sops-nix";
        };

        stylix = {
            url = "github:danth/stylix";
        };
    };

outputs = { self, ... }@inputs:
    {
        nixosConfigurations = {
            s0me-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [  
                    ./configuration.nix
                ];                    
            };
        };
        darwin-configuration = {
            s0me-nix = nix-darwin.lib.darwinSystem {
                modules = [  ];
            };
        };
    };
}
