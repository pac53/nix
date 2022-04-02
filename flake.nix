{
	description = "My Nix config.";
	inputs = {
		home-manager.url = "github:nix-community/home-manager/release-21.11";
		nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
	};

	outputs = {home-manager, ...}:
		let
			system = "x86_64-linux";
			username = "dylankr53";
		in {
			homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
				configuration = import ./home.nix;
				inherit system username;
				homeDirectory = "/home/${username}";
				stateVersion = "21.11";
			};
		};
}
