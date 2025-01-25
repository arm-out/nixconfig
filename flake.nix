{
  description = "NixOS Config Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager }@inputs: {
    # Hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
	./nixos/configuration.nix

	{
	   programs.hyprland.enable = true;
	   environment.sessionVariables = {
	     NIXOS_OZONE_WL = "1";    # Hint electron apps to use Wayland
	   };
        }


        home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.armout = import ./home.nix;
        }
      ];
    };
  };
}
