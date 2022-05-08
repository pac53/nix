{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { home-manager, ... }@inputs: 
		let
			username = "dylan";
		in {
			homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
				inherit username;
				system = "x86_64-linux";
				homeDirectory = "/home/${username}";
				stateVersion = "21.11";
				configuration = import ./home.nix;
			};
		};
}
