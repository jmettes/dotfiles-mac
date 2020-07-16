{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
  ];

  fonts.fonts = [ pkgs.dejavu_fonts ];

  imports = [
    <home-manager/nix-darwin>
  ];

  users.users.jonathan.name = "Jonathan Mettes";
  home-manager = {
    useUserPackages = true;
    users.jonathan = (import ./home.nix);
  };

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  # services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/bashrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  # default shell on catalina

  networking.hostName = "darwin";

#  environment.etc = {
#    # skip asking for password each time `darwin-rebuild` is run
#    # https://github.com/LnL7/nix-darwin/issues/165
#    "sudoers.d/.nix-darwin" = {
#      text = ''jonathan ALL=(ALL:ALL) NOPASSWD: /run/current-system/sw/bin/darwin-rebuild, /run/current-system/sw/bin/nix-env, /run/current-system/sw/bin/nix-build, /bin/launchctl, /run/current-system/sw/bin/ln, /nix/store/*/activate'';
#    };
#  };

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
