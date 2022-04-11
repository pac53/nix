{config, pkgs, ...}:	{
	nixpkgs.config.allowUnfree = true;

# Extra packages
	home = {
		packages = with pkgs; [
      mpv
			qemu
      discord
			minecraft
		];
	};

	programs = {
	  git = {
		  enable = true;
			userEmail = "dylan.krecker@protonmail.com";
    };
		home-manager.enable = true;
		neovim = {
			enable = true;
			extraConfig = builtins.readFile ./init.vim;
			plugins = with pkgs.vimPlugins; [
				# Themes
				vim-airline
				vim-airline-themes
				vim-colors-solarized
				# Plugins for LSP	
				nvim-lspconfig
				completion-nvim
			];
			extraPackages = with pkgs; [
				rnix-lsp
				haskell-language-server
				ccls
      ];
			# Other miscillaneous settings
			viAlias = true;
			withPython3 = false;
			withRuby = false;
		};
  };
}



