# SPDX-FileCopyrightText: 2020 Serokell <https://serokell.io/>
#
# SPDX-License-Identifier: MPL-2.0

{
  imports = [ ./common.nix ];

  networking.hostName = "crsjlnixnp01";

  users.users.hello = {
    isNormalUser = true;
    password = "";
    uid = 1010;
  };

  networking.firewall.allowedTCPPorts = [ 22 ];
  networking.firewall.enable = true;
}