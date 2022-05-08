{config, pkgs, self, ...}:    {

	imports = [
		./vim.nix
                ./tmux.nix
		./foot.nix
	];

	home = {
		packages = with pkgs; [
		];
	};

	programs = {
		git = {
			enable = true;
			userEmail = "dylan.krecker@protonmail.com";
		};

		home-manager.enable = true;
    	};  
}
