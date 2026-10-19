{ pkgs, ... }:
{
  programs.hyprland = {
	enable = true;
	withUWSM = true;
	xwayland.enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
	kitty
	vscode
  ];

  programs.firefox.enable = true;

  services.pipewire = {
	enable = true;
	pulse.enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
  };
}
