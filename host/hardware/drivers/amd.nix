{
    lib,
    pkgs,
    config,
    ... 
}: {
    hardware = { 
        amdgpu = {
            amdvlk = {
                enable = false;
                package = with pkgs; [ amdvlk ];
                # settings = { };
                support32Bit = {
                    enable = true;
                    package = with pkgs; [ driversi686Linux.amdvlk ];
                };
                supportExperimental.enable = false;
                opencl.enable = false;
            };
        };
        cpu = {
            amd = {
                updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware; # NEED to be like this
                ryzen-smu.enable = lib.mkForce false;
                sev = {
                    enable = false;
                    group = "sev";
                    mode = "0660";
                    user = "root";
                };
                
            };
        };
    };
}
