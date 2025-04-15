{ config, lib, pkgs, environment, ... }:

{
  # https://nixos.wiki/wiki/Vim
  # https://wiki.nixos.org/wiki/Vim
  # https://github.com/nix-community/home-manager/blob/master/modules/programs/vim.nix
  programs.vim = {
    enable = true;
    defaultEditor = true;

    plugins = with pkgs.vimPlugins; [
      vim-nix       # Syntax highlighting for Nix
      vim-sensible  # Sensible defaults
      vim-airline   # Status bar
      vim-fugitive  # Git integration
    ];

    settings = {
      number = true;         # Show line numbers
      relativenumber = true; # Show relative line numbers
      tabstop = 2;           # Number of spaces tabs count for
      shiftwidth = 2;        # Size of an indent
      expandtab = true;      # Use spaces instead of tabs
      mouse = "a";          # Enable mouse support
      ignorecase = true;     # Case insensitive search
      smartcase = true;     # Case sensitive when search includes uppercase
    };

    extraConfig = ''
      syntax on              " Enable syntax highlighting
      set clipboard=unnamed  " Use system clipboard
      set incsearch          " Show search results as you type
      set hlsearch           " Highlight search results
    '';
  };
} 
