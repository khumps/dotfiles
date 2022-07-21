#!/bin/sh
set -e

GITHUB_USERNAME="khumps"

echo "[INSTALL] Fonts"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip
mkdir -p ~/.local/share/fonts
unzip Hasklig.zip -d ~/.local/share/fonts/
rm Hasklig.zip

echo "[INSTALL] ZSH auto-suggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions


echo "[INSTALL] Chezmoi"
export BINDIR=$HOME/.local/bin
sh -c "$(curl -fsLS chezmoi.io/get)"

echo "[SETUP] Chezmoi"
$BINDIR/chezmoi init --apply $GITHUB_USERNAME

