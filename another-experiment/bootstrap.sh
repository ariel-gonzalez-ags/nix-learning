# Pin Nix version to minimize organizational support burden
# Disable channels with --no-channel-add
# This usage pattern is no longer recommended under the Flakes feature because it results in Flake builds 
# depending on a mutable environment variable NIX_PATH, compromising reproducibility.
VERSION='2.25.3'
URL="https://releases.nixos.org/nix/nix-${VERSION}/install"
CONFIGURATION="extra-experimental-features = nix-command flakes
extra-trusted-users = ${USER}"
echo "${CONFIGURATION}" > /tmp/nix.conf

# Download the installer script
sh <(curl --location "${URL}") \
  --daemon \
  --no-channel-add \
  --nix-extra-conf-file /tmp/nix.conf

# Verify the configuration was applied and remove temporary file
cat /etc/nix/nix.conf
rm /tmp/nix.conf