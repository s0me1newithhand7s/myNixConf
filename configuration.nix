# basically - flake file to refer
# maybe i can just import modules.nix 
# into flake.nix but newbites will 
# be confused, so

{
    imports = [
        ./modules.nix
    ];
}
