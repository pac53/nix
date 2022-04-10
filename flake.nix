{
        inputs = {
                home-manager = {
                        url = "github:nix-community/home-manager";
                        inputs.nixpkgs.follows = "nixpkgs";
                };
                nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        };

        outputs = {home-manager, ...}: {
                homeConfigurations."dylankr" = home-manager.lib.homeManagerConfiguration {
                        configuration = import ./home.nix;
                        username = "dylankr";
                        homeDirectory = "/home/dylankr";
                        system = "x86_64-linux";
                };
        };
}
