{
  description = "NixOS configuration for the default system";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    disko.url = "github:nix-community/disko";
  };

  outputs = { self, nixpkgs, disko }: {
    nixosConfigurations = {
      # Define a system configuration named "default"
      default = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/crsjldevp01.nix
          disko.nixosModules.disko
        ];
      };
    };
  };
}
