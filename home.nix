{config, pkgs, ...}:    {
	nixpkgs.config.allowUnfree = true;

	# Extra packages
	home = {
		packages = with pkgs; [
			mpv
			texlive.combined.scheme-basic
			minecraft
			ed
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
				vim-nix
				# Other plugins
				nerdtree
			];
			extraPackages = with pkgs; [
				rnix-lsp
				haskell-language-server
				ccls
				texlab
			];
			# Other miscillaneous settings
			viAlias = true;
			withPython3 = false;
			withRuby = false;
		};

		zsh = {
			enable = true;
			enableCompletion = true;
			enableSyntaxHighlighting = true;
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
