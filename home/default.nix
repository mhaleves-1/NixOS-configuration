{
  imports = [
    ./firefox.nix
    ./git.nix
    ./kitty.nix
    ./shell.nix
    ./ssh.nix
    ./vscode.nix
  ];

  home.username = "mathias";
  home.homeDirectory = "/home/mathias";
  home.stateVersion = "26.05"; # !!! Do not change !!!
}
