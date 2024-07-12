{
    lib,
    ... 
}: {
    hardware = {             
        graphics = {                  # cruical part for proper GPU working
	        enable = true;
            enable32Bit = true;
            ensureHeadlessSoftwareOpenGL = false;
        };
	enableRedistributableFirmware = lib.mkDefault true;
    };
}
