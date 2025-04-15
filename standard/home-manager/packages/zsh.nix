{ config, lib, pkgs, ... }:

{
  # https://wiki.nixos.org/wiki/Zsh
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    
    history = {
      size = 10000;
      path = "${config.xdg.configHome}/zsh/history";
      ignoreAllDups = true;
      ignorePatterns = ["rm *" "pkill *" "cp *"];
    };

    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "zsh-users/zsh-syntax-highlighting"; }
        { name = "zsh-users/zsh-history-substring-search"; }
      ];
    };
    
    shellAliases = {
      ls = "ls -la";
      rm = "rm -rf";
      cp = "cp -r";
    };
  };
} 

