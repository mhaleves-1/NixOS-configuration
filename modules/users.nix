{ pkgs, ...}:
{
  programs.zsh.enable = true;

  users.users.mathias = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };

  environment.pathsToLink = [ "/share/zsh" ];
}