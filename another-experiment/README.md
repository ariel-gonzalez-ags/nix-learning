---

# NixOS Deployment Guide

A quick and streamlined guide to setting up a NixOS system using `nixos-anywhere`.

---

## Installation Steps

### 1. Prepare the Target Host
On the **target host**, execute the following commands to set up SSH access:

```bash
mkdir -p ~/.ssh
curl https://github.com/<username>.keys -o ~/.ssh/authorized_keys
```

### 2. Deploy NixOS from the Source Host
On the **source host**, run the following command to initiate the deployment using `nixos-anywhere`:

```bash
nix run github:nix-community/nixos-anywhere -- --flake '.#default' nixos@<ip_address>
```

---

## Post-Deployment Steps

### 3. Apply Configuration Changes
To apply your NixOS configuration after the initial setup, execute the following command from the **source host**:

```bash
nix shell nixpkgs#nixos-rebuild
nixos-rebuild switch --use-remote-sudo --fast --flake .#default --target-host nixos@<ip_address> --build-host nixos@<ip_address>
```

### 4. Clean up older profiles
To clean up residual files after deploying NixOS remotely, execute the following command:

```bash
nix-collect-garbage -d
```

---

## Notes
- Replace `<username>` with your GitHub username to fetch your public SSH keys.
- Replace `<ip_address>` with the IP address of your target host.
- Ensure both the source and target hosts have network connectivity and SSH access configured.

Happy Nix-ing! 🎉

---

### Key Improvements
- Organized the steps with headings for better readability.
- Used consistent formatting for code blocks.
- Included explanations for placeholders.
- Added a "Notes" section for clarification and tips.