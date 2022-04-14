{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { home-manager, ... }:	{
		homeConfigurations.dylankr = home-manager.lib.homeManagerConfiguration {
			configuration = ./home.nix;
			system = "x86_64-linux";
			homeDirectory = "/home/dylankr";
			username = "dylankr";
			stateVersion = "21.11";
		};
	};
}
