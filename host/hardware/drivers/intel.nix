{
    lib,
    config,
    ... 
}: {
    hardware = {
        cpu = {
            intel = {
                updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware; # NEED to be like this
                sgx = {
                    enableDcapCompat = true;
                    provision = {
                        enable = false;
                        group = "sgx_prv";
                        mode = "0660";
                        user = "root";
                    };
                };
            };
        };
    };
}