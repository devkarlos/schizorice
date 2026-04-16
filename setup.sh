#!/bin/sh
# Usage:
# ./setup.sh
#

# Install packages

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm \
    git \
    base-devel \
    yay \
    librewolf-bin \
    onlyoffice-bin \
    zsh \ 
    zip \
    unzip \
    mpv \
    docker \
    pkgfile \
    bitwarden

yay -S --noconfirm \
    cursor-bin \
    visual-studio-code-bin \
    venstop-bin \
    notion-app-electron \
    figma-linux \
    signal-desktop \
    google-chrome

sudo pacman -Rns $(pacman -Qdtq) --noconfirm

# Copy config files

cp -r home/.config ~/.config
cp -r home/.fonts ~/.fonts
cp -r home/.icons ~/.icons
cp -r home/.themes ~/.themes

# GIT

git config --global user.name "karlos"
git config --global user.email "k.raffay@protonmail.com"

# Librewolf with arkenfox's user.js

chmod +x librewolf-setup.sh
./librewolf-setup.sh $USER

# ZSH

source ~/.config/zsh/.zshrc

# https://github.com/z-shell/zi
