## Install on linux

- `sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply --ssh khumps && sudo install ~/bin/chezmoi /usr/local/bin`

## Install on devcontainer

Add to `settings.json`:
```
"dotfiles.repository": "khumps/dotfiles",
"dotfiles.targetPath": "~/dotfiles",
"dotfiles.installCommand": "~/dotfiles/install.sh",
"terminal.integrated.shellIntegration.enabled": true,
"terminal.integrated.defaultProfile.linux": "zsh",
"terminal.integrated.fontWeight": "normal",
"terminal.integrated.fontSize": 16,
"terminal.integrated.fontFamily": "Hasklug Nerd Font Mono"
```