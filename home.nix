{config, pkgs, ...}:    {
	home = {
		packages = with pkgs; {
			hello
		};
	};

        programs = {
                home-manager.enable = true;
                neovim = {
                        enable = true;
                        viAlias = true;
                };
                git = {
                        enable = true;
                        userEmail = "dylan.krecker@protonmail.com";
                };
        };
}
