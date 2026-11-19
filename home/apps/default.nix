{ pkgs, ... }:
{
  imports = [
    ./firefox.nix
    ./kitty.nix
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    rnote
  ];
}
