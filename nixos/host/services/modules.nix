{
    disabledModules = [ 
        "./xserver/gui/de.nix" 
        "./xserver/gui/dm.nix"
        "./xserver/gui/wm.nix"
        "./printing/printing.nix"
        "./printing/avahi.nix"
    ];
    imports = [
        ./xserver/xkb.nix
        ./xserver/xserver.nix
        ./xserver/gui/de.nix
        ./xserver/gui/wm.nix
        ./xserver/gui/dm.nix
        ./printing/avahi.nix
        ./printing/printing.nix
        ./libinput.nix
        ./ssh.nix
    ];
}