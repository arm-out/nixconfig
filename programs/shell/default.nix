{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    ghostty
  ];
}
