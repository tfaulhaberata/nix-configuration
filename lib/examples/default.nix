{lib, ...}: rec {
  exampleFunc = {
    pkgs,
    text,
  }:
    pkgs.writeShellApplication {
      name = "example-script";
      runtimeInputs = with pkgs; [cowsay lolcat];
      text = ''
        echo "${text}" | cowsay | lolcat
      '';
    };
}
