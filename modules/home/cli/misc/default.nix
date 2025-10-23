{
  pkgs,
  lib,
  config,
  ...
}: let
  inherit (lib) mkEnableOption mkIf;

  cfg = config.tmf.cli.misc;

in {
  options.tmf.cli.zsh = {
    enable = mkEnableOption "MISC";
  };

  config = mkIf cfg.enable {
    home.packages = [
      # # Adds the 'hello' command to your environment. It prints a friendly
      # # "Hello, world!" when run.
      # pkgs.hello

      # # It is sometimes useful to fine-tune packages, for example, by applying
      # # overrides. You can do that directly here, just don't forget the
      # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
      # # fonts?
      pkgs.cargo
      pkgs.nodejs_24
      pkgs.unzip
      pkgs.python314
      pkgs.nerd-fonts.jetbrains-mono
      pkgs.lazygit
      pkgs.go
      pkgs.btop
      # # You can also create simple shell scripts directly inside your
      # # configuration. For example, this adds a command 'my-hello' to your
      # # environment:
      # (pkgs.writeShellScriptBin "my-hello" ''
      #   echo "Hello, ${config.home.username}!"
      # '')
    ];
  };
}
