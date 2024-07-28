{  
	... 
}: {
    nix = {
        gc = {                                                      # gc = garbage collecting, option for automatic nix-collect-garbage (or nix store gc..)
	     	automatic  = true;                                      # automatic GC
	 	dates      = "weekly";                                  # how often
	 	persistent = true;                                      # regulates time by saving it on disk
		randomizedDelaySec = "0";                               # randomize time before GCing 
        };
        settings = {                                                # nix settings, or declorative way to setup nix.conf in /etc/nix/
        	allowed-users = [ "hand7s" "root" ];                    # allowed users to nix-daemon
        	experimental-features = [ "nix-command" "flakes" ];     # experimental features, or "ah, now i can use nix store not nix-store"
        	sandbox = true;                                         # sandbox, https://discourse.nixos.org/t/what-is-sandboxing-and-what-does-it-entail/15533
        	trusted-users = [ "hand7s" "root" ];                    # trusted to nix-daemon users
        };
    }; 
}
