# for nVidia, bc i have one
{

    # services.xserver.enable = true;
    # services.xserver.videoDrivers = ["nvidia"];
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    hardware.opengl = {
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
    };
    # hardware.nvidia.prime = { ... }; # Read https://nixos.wiki/wiki/Nvidia
    hardware.nvidia.forceFullCompositionPipeline = true;
}