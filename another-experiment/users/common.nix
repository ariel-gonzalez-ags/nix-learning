{ pkgs, ... }:

{
  security.sudo.extraRules = [{
    groups = [ "wheel" ];
    commands = [{
      command = "ALL";
      options = [ "NOPASSWD" ];
    }];
  }];

  users.users.administrator = {
    isNormalUser = true;
    home = "/home/administrator";
    shell = pkgs.bashInteractive;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      # Replace with your actual public key
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEVIGSNw9DAX5q8hd8z8F/64csVmA04kycXqvQo2u1zg"
    ];
  };
  
  users.users.nixos = {
    isNormalUser = true;
    home = "/home/nixos";
    shell = pkgs.bashInteractive;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      # Replace with your actual public key
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEVIGSNw9DAX5q8hd8z8F/64csVmA04kycXqvQo2u1zg"
    ];
  };
}
