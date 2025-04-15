{ config, lib, pkgs, ... }:

{
  # https://wiki.nixos.org/wiki/Starship
  # https://gist.github.com/s-a-c/0e44dc7766922308924812d4c019b109#file-starship-nix/
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 1300;
      scan_timeout = 50;
      format = "$all$nix_shell$nodejs$lua$golang$rust$php$git_branch$git_commit$git_state$git_status\n$username$hostname$directory";
      character = {
        success_symbol = "[](bold green) ";
        error_symbol = "[✗](bold red) ";
      };
    };
  };
}
