#!/bin/zsh

unsetopt PROMPT_SP

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# Move npm config to config directory.
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export CNPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/npm"
export PATH="$PATH:$XDG_CONFIG_HOME/npm/bin"

# Move vscode config to config directory.
export VSCODE_HOME="$XDG_CONFIG_HOME/Code"

# Move git config to config directory.
export GIT_CONFIG_NOSYSTEM=1
export GIT_CONFIG_NOGLOBAL=1
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config"
export GIT_TEMPLATE_DIR="$XDG_CONFIG_HOME/git/templates"

# Move ssh config to config directory.
export SSH_CONFIG="$XDG_CONFIG_HOME/ssh/config"

# Move zsh history to cache directory.
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Move lesshistory to cache directory.
export LESSHISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/less/history"

# Move expo config to config directory.
export EXPO_HOME="$XDG_CONFIG_HOME/expo"