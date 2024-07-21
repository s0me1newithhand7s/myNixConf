{ 
    pkgs, 
    modulesPath, 
    ... 
}: {
    imports =
    [ (modulesPath + "/installer/scan/not-detected.nix") ];
    
    boot = {      
        extraModulePackages = [ ];                                # boot options
        kernelPackages = pkgs.linuxPackages_latest;               # kernel version and type to boot
        kernelModules = [ ];                             # kernel modules, like drivers
        initrd = {				# initrd options, take 'em from your hardware-configuration.nix
            availableKernelModules = [ ];
            kernelModules = [ ];
        };
        supportedFilesystems = [ ];     # supported FSes modules
    };
}
