  { config,pkgs, ... }:
  
  {
    home.username = "diveant";
    home.homeDirectory = "/home/diveant";
    home.stateVersion = "25.11";

    programs.bash = {
      enable = true;
      shellAliases = {
        ll = "ls -l";
        cdnix = "cd /etc/nixos";
       };
    }; 

     programs.git = {
    enable = true;
    settings = {
      user = {
        name  = "DiveAnt";
        email = "DiveAnt@github.com";
      };
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
  } 
