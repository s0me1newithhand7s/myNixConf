{ config, pkgs, libs, ... }:

{
    nix = {
        buildMachines = {
            # actually i recommend to read about https://nixos.org/manual/nix/stable/advanced-topics/distributed-builds;
            # more options here: https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=alpha_asc&type=packages&query=nix.buildMachines.
        };
        gc = {                                                      # gc = garbage collecting, option for automatic nix-collect-garbage (or nix store gc..)
	     	automatic  = true;                                      # automatic GC
	 	    dates      = "weekly";                                  # how often
	 	    persistent = true;                                      # regulates time by saving it on disk
            randomizedDelaySec = "0";                               # randomize time before GCing 
        };
        registry = {
            # read https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-registry before use;
            # more options here: https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=alpha_asc&type=packages&query=nix.registry.
        };
        settings = {                                                # nix settings, or declorative way to setup nix.conf in /etc/nix/
            allowed-users = [ "hand7s" "root" ];                    # allowed users to nix-daemon
            experimental-features = [ "nix-command" "flakes" ];     # experimental features, or "ah, now i can use nix store not nix-store"
            sandbox = true;                                         # sandbox, https://discourse.nixos.org/t/what-is-sandboxing-and-what-does-it-entail/15533
            trusted-users = [ "hand7s" "root" ];                    # trusted to nix-daemon users
        };
        sshServe = {
            enable = false;
            # yet again, read https://nixos.org/manual/nix/stable/package-management/ssh-substituter to understand;
            # more options here: https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=alpha_asc&type=packages&query=nix.sshServe.
        };
    }; 
}