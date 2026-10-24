{
  imports = [
    ./git.nix
    ./ssh.nix
  ];

  home.username = "mathias";
  home.homeDirectory = "/home/mathias";
  home.stateVersion = "26.05"; # !!! Do not change !!!
}