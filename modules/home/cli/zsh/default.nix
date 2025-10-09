{
  pkgs,
  lib,
  config,
  ...
}: let
  inherit (lib) mkEnableOption mkIf;

  cfg = config.tmf.cli.zsh;
in {
  options.tmf.cli.zsh = {
    enable = mkEnableOption "ZSH";
    extraSource = lib.mkOption {
      # Corrected line
      type = with lib.types; listOf str;
      default = [];
      description = "Additional files to source in ZSH initialization.";
    };
  };

  config = mkIf cfg.enable {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      plugins = [
        {
          name = "fzf-tab";
          src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
        }
      ];
      shellAliases = {update = "sudo nixos-rebuild switch";};

      oh-my-zsh = {
        enable = true;
        theme = "fino";
        plugins = ["fzf"];
      };
    };
  };
}



