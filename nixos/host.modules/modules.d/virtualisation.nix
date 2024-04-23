{ 
    virtualisation = {                      # virts options            
        cores = 8;                          
        graphics = false;                   
        containerd = {                      # options for containerd
            enable = false;                 # toggle for enabling containerd
            settings = { };                 
            args = { };                     
        };
        docker = {                          # options for Docker
            enable = false;                 # toggle for enabling Docker
            enableNvidia = false;           
            enableOnBoot = false;           
            rootless = {                    # rootless Docker - https://docs.docker.com/engine/security/rootless/
                enable = false;             # toggle for enabling rootless Docker
                setSocketVariable = false;  
            };                              
        };
        hypervGuest = {                     # options for Hyper-V
            enable = false;                 # toggle for enabling Hyper-V
            videoMode = "1152x864";         
        };
    };
}