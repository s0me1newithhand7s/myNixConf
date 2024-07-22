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

        # nixpkgs-stable = { 
        #    url = "github:nixos/nixpkgs/nixos-24.05";
        # }

        nixpkgs-master = {
            url = "github:nixos/nixpkgs/master";
        };

        ### ^^^ you can basically rename -master / -stable to just nixpkgs in case you need only one of 'em

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

        ### ^^^ nix-community flakes the best, i strongly recommend to use hm and disko :D

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

        ### ^^^ other flakes, good and usable 
    };

outputs = { 
    self,
    nixpkgs,
    home-manager,
    # nix-darwin,                                                        # activate it in case you need nix-darwin (macOS)
    ... 
}@inputs:
    {
        nixosConfigurations = {
            nixos = nixpkgs.lib.nixosSystem {                         # nixpkgs option goes here
                system = "x86_64-linux";
                modules = [  
                    ./configuration.nix                     # path to your nixos configuration.nix
                    # here you place modules for flakes inputs like a chaotic or stylix
                ];                    
            };
        };

        homeConfigurations = {
            nixuser = home-manager.lib.homeManagerConfiguration {        # hm option goes here
                pkgs = nixpkgs.legacyPackages.x86_64-linux;
                modules = [
                    ./home.nix                            # path to your home-manager configuration.nix
                     # here you place modules for flakes inputs like a chaotic or stylix
                ];
            };
        };
    
        # darwin-configuration = {
        #     s0me-nix = nix-darwin.lib.darwinSystem {                    # nix-darwin goes here
        #         modules = [ 
        #             # here you place modules for flakes inputs
        #         ];
        #     };
        # };
    };
}
