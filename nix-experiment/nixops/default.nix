let
  pkgs = import <nixpkgs> {};
  flake = builtins.getFlake (toString ./..);
in
{
  network.description = "My NixOps Deployment";

  machines = {
    host1 = { ... }:
      { deployment.targetHost = "host1.example.com";
        deployment.sshUser = "root";
        deployment.keys = {
          uploadPrivateKeys = [];
          authorizedKeys = [];
        };
        imports = [ flake.nixosConfigurations.host1 ];
      };
  };
}
