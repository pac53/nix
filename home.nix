{config, pkgs, ...}:	{
	home = {
		username = "dylankr53";
		homeDirectory = "/home/dylankr53";
	};

	programs = {
		kakoune = {
			enable = true;
			config = {
				tabStop = 2;
				indentWidth = 2;
				colorScheme = "solarized-dark";
				numberLines = {
  				enable = true;
  				relative = true;
				};
			};
		};

		git = {
  		userName = "pac53";
  		userEmail = "dylan.krecker@protonmail.com";
		};

		home-manager.enable = true;
	};
}
