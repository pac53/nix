{config, pkgs, ...}:    {
        programs = {
                home-manager.enable = true;
                neovim = {
                        enable = true;
                };
                git = {
                        enable = true;
                        userEmail = "dylan.krecker@protonmail.com";
                };
        };
}
