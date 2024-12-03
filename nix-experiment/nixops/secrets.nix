{ config, pkgs, ... }:

{
  # Example of using a secret
  environment.variables.MY_SECRET = builtins.readFile ../secrets/my-secret.txt;
}
