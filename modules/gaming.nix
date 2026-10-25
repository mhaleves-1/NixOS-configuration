{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [ proton-ge-bin ];
  };

  environment.systemPackages = [ pkgs.mangohud ];

  programs.gamemode.enable = true;
  hardware.graphics.enable32Bit = true;
}
