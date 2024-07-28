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

        nixpkgs-small = { 
            url = "github:nixos/nixpkgs/nixos-unstable-small";
        };

        nixpkgs-stable = { 
           url = "github:nixos/nixpkgs/nixos-24.05";
        };

        nixpkgs-stable-small = { 
           url = "github:nixos/nixpkgs/nixos-24.05-small";
        };

        nixpkgs-master = {
            url = "github:nixos/nixpkgs/master";
        };

        # ^^^ you can basically rename -master / -stable / -small to just nixpkgs in case you need only one of 'em

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

        nixos-generators = {
            url = "github:nix-community/nixos-generators";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        plasma-manager = {
            url = "github:nix-community/plasma-manager/";
            inputs.nixpkgs.follows = "nixpkgs";
            inputs.home-manager.follows = "home-manager";
        };

        # ^^^ nix-community flakes that i found usable

        agenix = {
            url = "github:ryantm/agenix";
        };

        chaotic = {
            url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
        };

        chaotic-master = {
            url = "github:chaotic-cx/nyx/main";
        };

        nix-darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        sops-nix = {
            url = "github:Mic92/sops-nix";
        };

        stylix = {
            url = "github:danth/stylix";
        };
    };

outputs = { 
    self,
    nixpkgs,
    home-manager,
    nix-darwin,
    ... 
} @ inputs:
    {
        nixosConfigurations = {
            nixos = nixpkgs.lib.nixosSystem {                         # nixpkgs option goes here
                system = "x86_64-linux";
                modules = [  
                    ./nixos/modules.nix                     # path to your nixos *.nix with nixos configuration, inside your new host directory
                    # here you place modules for flakes inputs like a chaotic or stylix
                ];                    
            };
        };

        homeConfigurations = {
            nixuser = home-manager.lib.homeManagerConfiguration {        # hm option goes here, inside your new host directory
                pkgs = nixpkgs.legacyPackages.x86_64-linux;
                modules = [
                    ./nixusr/home.nix                              # path to your home-manager configuration, standalone version
                    # here you place modules for flakes inputs like a chaotic or stylix
                ];
            };
        };
    };

    # about inputs:
    # you can add as much as you need inputs, 
    # like new hosts, home-manager and nix-darwin 
    # AND nixos itself. in case you need new..
    # just use existing options as template! 
}
