{
  imports = [
    ./boot.nix
    ./nix.nix
    ./packages.nix
    ./users.nix
  ];

  time.timeZone = "Amterica/Bogota";
  networking.networkmanager.enable = true;
  zramSwap.enable = true;

  # External drivers
  services.udisks2.enable = true;
  boot.supportedFilesystems = [ "nfts" ];
}
