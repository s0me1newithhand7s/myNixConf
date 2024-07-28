{
    lib,
    config,
    ...
}: {
    system = {
        stateVersion = config.system.nixos.release;
        name = config.networking.hostName;
        activatable = lib.mkForce true;
        copySystemConfiguration = false;
    };
}