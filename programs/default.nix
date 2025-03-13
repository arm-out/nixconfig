{ pkgs, ... }:

{
  imports = [
    ./desktop
    ./shell
  ];

  home.packages = with pkgs; [
    gh

    # Browser
    firefox

    # Second brain
    obsidian
  ];
}
