{config, pkgs, self, ...}:    {
	nixpkgs = {
		config.allowUnfree = true;
	};

	# Extra packages
	home = {
		packages = with pkgs; [
			mpv
		];
	};

	programs = {
		git = {
			enable = true;
			userEmail = "dylan.krecker@protonmail.com";
		};

		emacs = {
			enable = true;
		};

		home-manager.enable = true;
    	};  
}
