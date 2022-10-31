#!/usr/bin/env bash

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install jq nmap pwgen tree wget git vim zsh ffmpeg neofetch 

# OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove annoying console login message
touch ~/.hushlogin

# Generate new SSH keys
eval "$(ssh-agent -s)"
cd ~/ && mkdir .ssh
ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -C "angelospanag@protonmail.com" -N ''

# SSH config
touch ~/.ssh/config
echo "Host *" >> ~/.ssh/config
echo " AddKeysToAgent yes" >> ~/.ssh/config
echo " UseKeychain yes" >> ~/.ssh/config
echo " IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config

# Add the new SSH keys to the keychain
chmod 400 ~/.ssh/id_rsa
ssh-add -K ~/.ssh/id_rsa

# Who am I?
echo "alias myip=\"curl ifconfig.me\"" >> ~/.zshrc

# Git & Git config
git config --global credential.helper osxkeychain
git config --global user.email "angelospanag@protonmail.com"
git config --global user.name "Angelos Panagiotopoulos"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global commit.gpgsign true

# Vim & Vim config
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "colorscheme elflord" >> ~/.vimrc
echo "set backspace=indent,eol,start" >> ~/.vimrc

# Python
brew install python@3.11 poetry pyenv 
echo "export PATH=\"/usr/local/opt/python@3.11/libexec/bin:\$PATH\"" >> ~/.zshrc
echo "export PATH=\"\$HOME/Library/Python/3.11/bin:\$PATH\"" >> ~/.zshrc
echo "export POETRY_VIRTUALENVS_IN_PROJECT=1" >> ~/.zshrc
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source  ~/.zshrc
pip3 install -U --user flake8 flake8-bugbear pep8-naming black

# Go
brew install go

# Node.js
brew install node@18

# ApacheBench
brew install homebrew/apache/ab

# Brew cask apps
brew install --cask brave-browser firefox iterm2 keepassxc postman signal vlc

# Gaming
brew install --cask gog-galaxy steam

# Docker
brew install --cask docker

# Visual Studio Code and extensions
brew install --cask visual-studio-code
code --install-extension bungcip.better-toml
code --install-extension dbaeumer.vscode-eslint
code --install-extension golang.go
code --install-extension hashicorp.terraform
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension njpwerner.autodocstring
code --install-extension oderwat.indent-rainbow
code --install-extension PKief.material-icon-theme

VS_CODE_SETTINGS="{\"workbench.colorTheme\": \"Default Dark+\",
        \"workbench.iconTheme\": \"material-icon-theme\",
        \"telemetry.telemetryLevel\": \"off\",
        \"editor.fontSize\": 16,
        \"python.formatting.provider\": \"black\",
        \"python.linting.flake8Enabled\": true,
        \"editor.bracketPairColorization.enabled\": true,
        \"editor.formatOnSave\": true}"

echo $VS_CODE_SETTINGS > ~/Library/Application Support/Code/User/settings.json
