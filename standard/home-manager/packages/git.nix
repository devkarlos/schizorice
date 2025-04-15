{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;

    userName = "devkarlos";
    userEmail = "k.raffay@protonmail.com";
    
    extraConfig = {
      color.ui = true; # Enable color in git output
      core.editor = "vim";
      blame.date = "relative";
      pull.rebase = false; # Use merge instead
      diff.colorMoved = "default";
      push.autoSetupRemote = true;

      # Use unix line endings
      core.autocrlf = false;
      core.eol = "lf";
      core.safecrlf = true;

      ignores = [ ".env*" "node_modules" "DS_Store" ];
    };    
  };
}
