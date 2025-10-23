
{
  pkgs,
  lib,
  config,
  ...
}: let
  inherit (lib) mkEnableOption mkIf;

  cfg = config.tmf.neovim.nvim;

in {
  options.tmf.neovim.nvim = {
    enable = mkEnableOption "NVIM";
  };

  config = mkIf cfg.enable {
    ".config/nvim".source = ./nvim-config/.;
    programs.neovim = {
      enable = true;
    };
  };
}



