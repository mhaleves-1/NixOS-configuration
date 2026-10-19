{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    git
    # Hardware-Programs
    pciutils
  ];
}
