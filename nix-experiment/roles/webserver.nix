{ config, pkgs, ... }:

{
  services.nginx = {
    enable = true;
    virtualHosts."example.com" = {
      root = "/var/www/example";
      listenAddresses = [ "0.0.0.0" ];
      extraConfig = ''
        # Additional Nginx configurations
      '';
    };
  };
}
