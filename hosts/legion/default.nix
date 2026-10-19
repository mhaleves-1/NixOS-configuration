{
  imports = [
    ./hardware-configuration.nix
    ./disks.nix
    ./nvidia.nix
    ../../modules
  ];

  networking.hostName = "legion"; # Define hostname.

  # !!! DO NOT CHANGE !!!
  system.stateVersion = "26.05";
}

