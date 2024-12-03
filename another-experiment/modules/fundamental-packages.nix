{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jq
    git
    vim
    curl
    ncdu
    tree
    htop
    wget
    tcpdump
    open-vm-tools
  ];
}