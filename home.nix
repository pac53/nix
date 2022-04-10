{config, pkgs, ...}:    {
        programs = {
                home-manager.enable = true;
                neovim = {
                        enable = true;
                };
        };
}
