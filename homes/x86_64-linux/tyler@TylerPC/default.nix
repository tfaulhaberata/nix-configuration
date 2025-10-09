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
  };

  home.stateVersion = "23.05";
}
 
