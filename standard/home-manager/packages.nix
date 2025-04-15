{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  
  imports = [
    ./packages/git.nix
    ./packages/libreoffice.nix
    ./packages/librewolf.nix
    ./packages/vim.nix
    ./packages/zsh.nix
    ./packages/zsh-starship.nix
  ];
  
  home.packages = with pkgs; [
    # Communication
    signal-desktop
    discord

    # Development
    vscode
    cursor
    python3
    nodejs
  ];
} 
