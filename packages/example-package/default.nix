{pkgs, ...}:
pkgs.writeShellApplication {
  name = "example-script";
  runtimeInputs = with pkgs; [cowsay lolcat];
  text = ''
    echo "Hello ATA Nix Hour" | cowsay | lolcat
  '';
}
