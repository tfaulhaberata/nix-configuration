{
  lib,
  pkgs,
  ...
}:
lib.tmf.exampleFunc {
  inherit pkgs;
  text = "Hello World!";
}
