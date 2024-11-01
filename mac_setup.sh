# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install btop ffmpeg git jq nmap pwgen tree vim wget   

# OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove annoying console login message
touch ~/.hushlogin

# Generate new SSH keys
ssh-keygen -t ed25519 -C "angelospanag@protonmail.com"

# Who am I?
echo "alias myip=\"curl ifconfig.me\"" >> ~/.zshrc

# List preferred wireless networks
echo "alias list-preferred-wireless-networks=\"networksetup -listpreferredwirelessnetworks en0\"" >> ~/.zshrc

# Git & Git config
git config --global user.email "angelospanag@protonmail.com"
git config --global user.name "Angelos Panagiotopoulos"

# Vim & Vim config
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "colorscheme elflord" >> ~/.vimrc
echo "set backspace=indent,eol,start" >> ~/.vimrc

# Python
brew install python@3.13 ipython ruff uv
echo "export PATH=\"/usr/local/opt/python@3.13/libexec/bin:\$PATH\"" >> ~/.zshrc
source  ~/.zshrc

# Go
brew install go

# Node.js
brew install node@22 pnpm

# Brew cask apps
brew install --cask firefox iterm2 keepassxc krita ollama pycharm signal vlc

# Gaming
brew install --cask gog-galaxy steam whisky

# Docker
brew install --cask docker

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
