# About disko by hand7s
# disko is great tool that helps reproduce system much faster,
# unfortunatly, this came with costs of making whole config more private.
# to prevent this i decided to not include format for root FS, as both 
# you and i may prefer another FS. in my case i use 2: ext4 for HDDs and 
# F2FS for SSDs. also, i decided to left some space after > size = "98%; < 


{
    disko = {
        devices = {
            root-disk = {
                device = "/dev/X";
                type = "disk";
                content = {
                    type = "GPT";
                    partitions = { 
                        ESP = {
                            type = "EF00";
                            size = "1G";
                            name = "boot";
                            content = { 
                                type = "filesystem";
                                format = "vfat";
                                mountpoint = "/boot";
                            };
                        };
                        # luks = { };                     # https://github.com/nix-community/disko/blob/master/example/luks-interactive-login.nix
                        root = {
                            size = "98%";
                            content = {
                                type = "filesystem";
                                name = "root";
                                # format = " ";
                                mountpoint = "/";
                            };
                        };
                        # encryptedSwap = { }
                        # plainSwap = { }                 # https://github.com/nix-community/disko/blob/master/example/swap.nix
                    };
                };
            };
        };
    };
}
