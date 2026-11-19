{ pkgs, ... }:
{
  imports = [
    ./hyprland.nix
  ];

  # AUDIO
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };

  # FONTS
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
}
