
{
  pkgs,
  lib,
  config,
  ...
}: let
  inherit (lib) mkEnableOption mkIf;

  cfg = config.tmf.neovim;

in {
  options.tmf.neovim = {
    enable = mkEnableOption "NVIM";
  };

  config = mkIf cfg.enable {
    home.file = {
      ".config/nvim".source = ./nvim-config/.;
    };
    programs.neovim = {
      enable = true;
    };
  };
}



