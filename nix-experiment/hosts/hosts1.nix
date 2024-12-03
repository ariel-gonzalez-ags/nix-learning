{ config, pkgs, ... }:

{
  imports = [
    ../nix/modules/ssh.nix
    ../roles/webserver.nix
    ../users/common.nix
    # Include secrets module if using secrets
  ];

  networking.hostName = "host1";

  # Additional NixOS configurations
}
