{ 
    ...
}: {
    boot = {
        loader = {
            systemd-boot = {                    # systemd-boot options, see https://wiki.nixos.org/wiki/Bootloader for more
		        configurationLimit = 5;         # limits of generation
                enable = true;                  # toggle for enabling systemd-boot
                memtest86 = {                   # options for memtest86 or https://www.memtest86.com/
                    enable = true;              
                    sortKey = "o_memtest86";    
                };
                netbootxyz = {                  # options for netbootxyz or https://netboot.xyz/
                    enable = false;
                    sortKey = "o_netbootxyz";
                };
                sortKey = "nixos";              # https://uapi-group.org/specifications/specs/boot_loader_specification/#sorting
            };
        };
    };
}