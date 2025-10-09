{
  lib,
  pkgs,
  ...
}:
lib.nh.exampleFunc {
  inherit pkgs;
  text = "Hello World!";
}
