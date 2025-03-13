{ config, pkgs, ... }:

{
  imports = [
    ./programs
  ];

  home.username = "armout";
  home.homeDirectory = "/home/armout";

  # Set git config
  programs.git = {
    enable = true;
    userName = "arm-out";
    userEmail = "arminsuraj@gmail.com";
  };

  # GTK Theme
  gtk = {
    enable = true;
    theme = {
      name = "Dracula";
      package = pkgs.dracula-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  home.sessionVariables = {
    GTK_THEME = "Dracula";
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
} 
