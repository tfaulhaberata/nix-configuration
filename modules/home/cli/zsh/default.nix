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
    # # TODO: Move the aliases.shrc into a nix file so if programs are called in there they are for sure installed and have the correct path
    # home.file = {
    #   ".config/shell/zsh/fino.zsh-theme".source = ./fino-theme/fino.zsh-theme;
    #   ".config/shell/zsh/git.zsh".source = ./fino-theme/git.zsh;
    #   ".config/shell/zsh/prompt_info_functions.zsh".source =
    #     ./fino-theme/prompt_info_functions.zsh;
    #   ".config/shell/zsh/spectrum.zsh".source = ./fino-theme/spectrum.zsh;
    # };
  };
}



