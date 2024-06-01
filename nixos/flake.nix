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

        agenix = {
            url = "github:"github:ryantm/agenix";
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

outputs = { self, ... } @ inputs:
    nixosConfigurations = {
        s0me-nix = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs system; };
            modules = [  ];
        };
    };
    darwin-configuration = {
        s0me-nix = nix-darwin.lib.darwinSystem {
            modules = [ ./configuration.nix ];
        };
    };
}
