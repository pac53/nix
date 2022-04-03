{config, pkgs, ...}:	{
  nixpkgs.config.allowUnfree = true;

	home = {
		username = "dylankr53";
		homeDirectory = "/home/dylankr53";
		packages = with pkgs; [
  		unityhub
		];
		++ with jetbrains; [
  		clion
  		rider
  		pycharm-professional
		];
	};

	programs = {

		kakoune = {
			enable = true;
			plugins = with pkgs.kakounePlugins; [
  			powerline-kak
			];
			config = {
				tabStop = 2;
				indentWidth = 2;
				colorScheme = "solarized-dark";
				numberLines = {
  				enable = true;
				};
			};
			extraConfig = ''
				powerline-start
				powerline-theme solarized-dark
			'';
		};

		git = {
  		enable = true;
  		userName = "pac53";
  		userEmail = "dylan.krecker@protonmail.com";
		};

		home-manager.enable = true;
	};	
}
