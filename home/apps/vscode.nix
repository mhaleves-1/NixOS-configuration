{ pkgs, ... }:
let
  flake = ''(builtins.getFlake "/home/mathias/nixos")'';
in
{
  home.packages = with pkgs; [
    nixd
    nixfmt
  ];

  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];
      userSettings = {
        "[nix]" = {
          "editor.formatOnSave" = true;
          "editor.defaultFormatter" = "jnoortheen.nix-ide";
        };

        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd";
        "nix.serverSettings".nixd = {
          formatting.command = [ "nixfmt" ];
          nixpkgs.expr = "import ${flake}.inputs.nixpkgs { }";
          options = {
            nixos.expr = "${flake}.nixosConfigurations.legion.options";
            home-manager.expr = "${flake}.nixosConfigurations.legion.options.home-manager.users.type.getSubOptions []";
          };
        };
      };
    };
  };
}
