{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	let
		username = "dylan";
	in outputs = { home-manager, ... }: {
		homeConfigurations.${userame} = home-manager.lib.homeManagerConfiguration {
			inherit username
			configuration = ./home.nix;
			system = "x86_64-linux";
			homeDirectory = "/home/${username};
			stateVersion = "21.11";
		};
	};
}
