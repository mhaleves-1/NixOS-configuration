{ config, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "DarkMatter";
        email = "330206685+mhaleves-1@users.noreply.github.com";
      };
      init.defaultBranch = "main";
    };
    signing = {
      format = "ssh";
      key = "${config.home.homeDirectory}/.ssh/id_ed25519.pub";
      signByDefault = true;
    };
  };
}
