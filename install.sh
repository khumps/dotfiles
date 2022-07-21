#!/bin/sh
set -e

GITHUB_USERNAME="khumps"




echo "[INSTALL] Chezmoi"
export BINDIR=$HOME/.local/bin
sh -c "$(curl -fsLS chezmoi.io/get)"

echo "[SETUP] Chezmoi"
$BINDIR/chezmoi init --apply $GITHUB_USERNAME

