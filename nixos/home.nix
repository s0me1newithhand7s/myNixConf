# Home Manager itself, nothing here

{ config, pkgs, ... }:

{
    home.username = "hand7s";
    home.homeDirectory = "/home/hand7s";
    home.stateVersion = "23.11";

    # Let HM works:
    programs.home-manager.enable = true;
}