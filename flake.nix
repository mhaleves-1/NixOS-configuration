{
  description = "Mathias's NixOS configuration";

  inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
	nixpkgs-unstable.url = "githubb:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
	nixosConfigurations.legion = nixpkgs.lib.nixosSystem {
		specialArgs = { inherit inputs; };
		modules = [ ./configuration.nix ];
	};
  };
}
