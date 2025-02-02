# SPDX-FileCopyrightText: 2020 Serokell <https://serokell.io/>
#
# SPDX-License-Identifier: MPL-2.0

{
  boot.loader.systemd-boot.enable = true;

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/00000000-0000-0000-0000-000000000000";
    fsType = "btrfs";
  };

  users.users.admin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "sudo" ];
    password = "123";
  };
    
  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";

  # Another option would be root on the server
  security.sudo.extraRules = [{
    groups = [ "wheel" ];
    commands = [{
      command = "ALL";
      options = [ "NOPASSWD" ];
    }];
  }];

  nix.settings.trusted-public-keys = [
    (builtins.readFile ./nix-pub.pem)
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
  ];
}