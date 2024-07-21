{
    pkgs,
    ...
}: {
    boot = {
        loader = {
            grub = {                             # GRUB bootloader options, see https://wiki.nixos.org/wiki/GNU_GRUB for more
		        configurationLimit = 5;          # limits of generation
                default = "0";                   # default generation in list 
                # device = ;                     # option for legacy boot
                # devices = [ ... ];             # also option for legacy boot
                efiInstallAsRemovable = false;   # basically grub-install with --removable
                efiSupport = false;              # EFI support for GRUB is you need it
                enable = false;                  # toggle for enabling GRUB
                font = "${pkgs.grub2}/share/grub/unicode.pf2"; 
                fontSize = 16;                   # font options, package font and package size
                # theme = ;                      # GRUB theme, if default is not suitable for you
                # users = { ... };               # option for hashed password thing
            };
        };
    };
}