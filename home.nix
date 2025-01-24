{ config, pkgs, ... }:

{
  host.username = "armout";
  host.homeDirectory = "/home/armout";

  # Set git config
  programs.git = {
    enable = true;
    userName = "arm-out";
    userEmail = "arminsuraj@gmail.com";
  };
} 
