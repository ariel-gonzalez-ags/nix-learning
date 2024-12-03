{
  imports = [
    ../modules/disk-config.nix
    ../modules/baseline.nix
    ../modules/ssh.nix
    ../modules/fundamental-packages.nix
    ../users/common.nix
    ../modules/disable-channels.nix
  ];
  networking.hostName = "crsjldevp01";
}
