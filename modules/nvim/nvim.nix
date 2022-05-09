{config, pkgs, self, ...}:    {
	nixpkgs.overlays = [
		(import (builtins.fetchTarball {
    		url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
		sha256 = "sha256:017jjzw858wv7hbczbgl3f4856vnrk4fk5pvb0a0ry2v0yqrmi0w";
  		}))
	];
	programs.neovim = {
		enable = true;
                package = pkgs.neovim-nightly;
                extraConfig = builtins.readFile ./init.vim;
		plugins = with pkgs.vimPlugins; [
		  vim-colors-solarized
                  vim-nix
                  vim-airline
                  vim-airline-themes
                ];
                      
    	};  
}
