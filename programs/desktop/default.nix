{ pkgs, config, ... }:

{
  home.file = {
    ".config/hypr/hyprland.conf".source = ./hyprland.conf;
    ".config/hypr/hypridle.conf".source = ./hypridle.conf;
  };

  home.packages = with pkgs; [
    wofi
    waybar
    hypridle
  ];

}
