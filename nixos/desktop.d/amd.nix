# for AMD, bc i have one

{
    boot.initrd.kernelModules = [ "amdgpu" ];
    # services.xserver.enable = true;
    # services.xserver.videoDrivers = [ "amdgpu" ];
    hardware.opengl.extraPackages = with pkgs; [
        rocmPackages.clr.icd
    ];
    hardware.opengl.driSupport = true; 
    hardware.opengl.extraPackages = with pkgs; [
        amdvlk
    ];
}