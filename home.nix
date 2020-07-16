{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userEmail = "jonathan@jmettes.com";
    userName = "Jonathan Mettes";
  };

  programs.alacritty = {
    enable = true;
    settings = (import ./alacritty/settings.nix);
  };

  programs.home-manager.enable = true;

  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    plugins = [
      pkgs.vimPlugins.vim-nix
    ];
  };
}
