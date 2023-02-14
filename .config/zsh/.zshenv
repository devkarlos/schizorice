#!/bin/zsh

unsetopt PROMPT_SP

# Default programs:
export EDITOR="nvim"
export TERMINAL="Alacritty"
export BROWSER="firefox"

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# $HOME Clean-up:
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/Android/Sdk"
export ANDROID_HOME="$ANDROID_SDK_HOME"

export GNUPGHOME="$XDG_DATA_HOME/gnupg"

export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export GTK3_RC_FILES="$XDG_CONFIG_HOME/gtk-3.0/gtkrc"
export GTK4_RC_FILES="$XDG_CONFIG_HOME/gtk-4.0/gtkrc"

export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

export JAVA_HOME=$(dirname $(dirname $(readlink $(readlink $(which javac)))))
export PATH=$PATH:$JAVA_HOME/bin
export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar

export LESSHISTFILE="-"

export MOZ_ENABLE_WAYLAND=1

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export CNPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/npm"
export PATH="$PATH:$XDG_CONFIG_HOME/npm/bin"

export PATH=$PATH:"$JAVA_HOME/bin"
export PATH=$PATH:"$ANDROID_SDK_HOME/tools"
export PATH=$PATH:"$ANDROID_SDK_HOME/platform-tools"

export SDKMAN="$XDG_CONFIG_HOME/sdkman/bin/sdkman-init.sh"

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

export $(dbus-launch)

# export XDG_SESSION_TYPE="X11"
# export XAUTHORITY="$XDG_CONFIG_HOME/Xauthority"
# export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
