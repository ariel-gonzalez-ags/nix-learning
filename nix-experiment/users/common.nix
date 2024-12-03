{ config, pkgs, ... }:

{
  users.users.youruser = {
    isNormalUser = true;
    home = "/home/youruser";
    shell = pkgs.bashInteractive;
    extraGroups = [ "wheel" ];  # For sudo access
    openssh.authorizedKeys.keys = [
      # Replace with your actual public SSH key
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEVIGSNw9DAX5q8hd8z8F/64csVmA04kycXqvQo2u1zg"
    ];
  };
}
