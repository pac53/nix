{config, pkgs, self, ...}:    {

	imports = [
		./vim.nix
                ./tmux.nix
	];

	home = {
		packages = with pkgs; [
		glibcLocales
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
