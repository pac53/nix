{config, pkgs, self, ...}:    {
  nixpkgs = {
    config.allowUnfree = true;
  };

	# Extra packages
	home = {
		packages = with pkgs; [
			mpv
      ed
      lxappearance
      ayu-theme-gtk
      solarc-gtk-theme
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
        vim-nix
        vim-colors-solarized
        nvim-lspconfig
				# Other plugins
				nerdtree
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

		zsh = {
			enable = true;
      enableSyntaxHighlighting = true;
      defaultKeymap = "vicmd";
			plugins = [
				{
					name = "pure";
					src = pkgs.fetchFromGitHub {
						owner = "sindresorhus";
						repo = "pure";
						rev = "v1.20.1";
						sha256 = "sha256-iuLi0o++e0PqK81AKWfIbCV0CTIxq2Oki6U2oEYsr68=";
					};
				}
			];

			localVariables = {
				PURE_PROMPT_SYMBOL = "λ";
			};
        };
    };
}
