{ pkgs, ... }:
{

  # --------- GUI ---------

  programs.hyprland = {
	  enable = true;
	  withUWSM = true;
	  xwayland.enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # --------- Programs ---------

  environment.systemPackages = with pkgs; [
	  kitty
	  vscode
  ];

  # Browser(s)
  programs.firefox.enable = true;
  
}
