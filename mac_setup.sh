# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install btop cloc fd ffmpeg fzf git jq lazygit neovim nmap pwgen ripgrep starship tree wget   

# Lazyvim
# https://www.lazyvim.org
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Remove annoying console login message
touch ~/.hushlogin

# Generate new SSH keys
ssh-keygen -t ed25519 -C "angelospanag@protonmail.com"

# Git & Git config
git config --global user.email "angelospanag@protonmail.com"
git config --global user.name "Angelos Panagiotopoulos"

# Python
brew install python@3.13 ipython ruff uv

# Go
brew install go golangci-lint

# Node.js
brew install node@22 pnpm

# Brew cask apps
brew install --cask ghostty goland keepassxc ollama pycharm signal vlc

# Gaming
brew install --cask gog-galaxy steam

# Docker
brew install --cask docker-desktop

# Visual Studio Code and extensions
brew install --cask visual-studio-code
code --install-extension charliermarsh.ruff
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension golang.go
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension pflannery.vscode-versionlens
code --install-extension tamasfe.even-better-toml
code --install-extension unifiedjs.vscode-mdx
code --install-extension yzhang.markdown-all-in-one
