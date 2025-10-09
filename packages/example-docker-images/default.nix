{
  pkgs,
  lib,
  inputs,
  ...
}: let
  docker-image = pkgs.dockerTools.buildImage {
    name = "example-image";
    tag = "latest";
    contents = [pkgs.nh.another-example-package];
    config = {
      Cmd = ["${pkgs.nh.example-package}/bin/example-script"];
      Env = [
        "EXAMPLE=variable"
      ];
    };
  };
in
  docker-image
