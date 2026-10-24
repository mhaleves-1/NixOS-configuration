{ config, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "DarkMatter";
        email = "materiaoscura.edu@gmail.com";
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