{ config, lib, pkgs, inputs, ... }:

{
    imports = [ inputs.home-manager.nixosModules.home-manager ];

    # Home manager itself, as NixOS part.
    # there is SO many materials for HM, although i can provide it,
    # i won't, bc you NEED to read it yourself to clearly understand
    # how he works. also you can watch vimenjoyer videos!
    # and don't even try https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=relevance&type=packages&query=home-manager
    # there is nothing to read lmao

    home-manager = {
        extraSpecialArgs = { inherit inputs; };
        users = {
            hand7s = import ./home.d/home.nix;
        };
    };
};