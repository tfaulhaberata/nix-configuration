{ inputs, lib, pkgs, config, osConfig ? { }, format ? "unknown", ... }:
with lib;
with lib.tmf; {
  tmf = {
    user = {
      name = "tyler";
      fullName = "Tyler Faulhaber";
      email = "tylerfaulhaber@gmail.com";
      uid = 10000;
    };
    cli.zsh = {
      enable = true;
    };
  };

  home.stateVersion = "23.05";
}
 
