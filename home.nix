{config, pkgs, self, ...}:    {

	imports = [
		./modules/nvim/nvim.nix
		./modules/tmux.nix
                ./modules/foot.nix
                ./modules/emacs.nix
	];

	home = {
		packages = with pkgs; [
                  gnome-console
                  zathura
                  river
                  sway
                  wayfire
                  weston
                  wio
		];
	};

	fonts.fontconfig.enable = true;

	programs = {
		git = {
			enable = true;
			userEmail = "dylan.krecker@protonmail.com";
		};
		home-manager.enable = true;
    	};  
}
