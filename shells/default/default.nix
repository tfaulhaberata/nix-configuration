{
  pkgs,
  lib,
  ...
}:
pkgs.mkShell {
  buildInputs = with pkgs; [terraform nh.another-example-package];
  shellHook = ''
    ${pkgs.nh.example-package}/bin/example-script
  '';
}
