{lib, inputs, ...}: {
  # make `nix run nixpkgs#nixpkgs` use the same nixpkgs as the one used by this flake.
  nix.registry.nixpkgs.flake = nixpkgs;
  nix.channel.enable = false; # remove nix-channel related tools & configs, we use flakes instead.
}