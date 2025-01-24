{ config, pkgs, ... }:

{
  imports = [
    ./programs/desktop
  ];

  home.username = "armout";
  home.homeDirectory = "/home/armout";

  # Set git config
  programs.git = {
    enable = true;
    userName = "arm-out";
    userEmail = "arminsuraj@gmail.com";
  };


  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
} 
