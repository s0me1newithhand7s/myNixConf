{
    pkgs,
    config,
    ... 
}: {
    hardware = {
        nvidia = {                              # read this - https://wiki.nixos.org/wiki/Nvidia
            datacenter = {
                enable = false;
                settings = {};
            };
            dynamicBoost = false;
            forceFullCompositionPipeline = false;
            modesetting.enable = false;
            nvidiaSettings = false;
            open = false;
            package = "config.boot.kernelPackages.nvidiaPackages.stable";
            powerManagement = {
                enable = false;
                finegrained = false;
            };
            prime = {
                allowExternalGpu = false;
                amdgpuBusId = "";
                intelBusId = "";
                nvidiaBusId = "";
                offload = {
                    enable = false;
                    enableOffloadCmd = false;
                };
                reverseSync = {
                    enable = false;
                    setupCommands.enable = false;
                };
                sync.enable = false;
            };
        };
    };
}
