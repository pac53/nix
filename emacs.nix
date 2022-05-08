{config, self, pkgs, ...}:    {
	home.packages = with pkgs; [
		iosevka
	];
	programs.emacs = {
		enable = true;
	};
}
