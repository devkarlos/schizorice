{ config, lib, pkgs, ... }:

# TODO: Setup nixcord - https://github.com/KaylorBen/nixcord/tree/main

{
  programs.nixcord = {
    enable = true;
  };
}
