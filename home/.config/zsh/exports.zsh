export PATH="$HOME/.local/bin:$PATH"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
mkdir -p "$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME"

# Digishock
export DIGISHOCK_ENV=lukask
export DIGISHOCK_NGINX_CERT_CRT=./staging/nginx.crt
export DIGISHOCK_NGINX_CERT_KEY=./staging/nginx.key

# Move files from ~ to .config
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"
export COLIMA_HOME="$XDG_CONFIG_HOME/colima"