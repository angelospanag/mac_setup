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
ssh-keygen -t ed25519 -C "angelospanag@protonmail.com" -N ''

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
brew install python@3.12 poetry ruff ipython
echo "export PATH=\"/usr/local/opt/python@3.12/libexec/bin:\$PATH\"" >> ~/.zshrc
echo "export POETRY_VIRTUALENVS_IN_PROJECT=1" >> ~/.zshrc
source  ~/.zshrc

# Go
brew install go

# Java
brew install --cask temurin

# Node.js
brew install node@20

# Brew cask apps
brew install --cask iterm2 keepassxc signal vlc

# Gaming
brew install --cask gog-galaxy steam

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

VS_CODE_SETTINGS="{\"workbench.colorTheme\": \"Default Dark+\",
        \"workbench.iconTheme\": \"material-icon-theme\",
        \"telemetry.telemetryLevel\": \"off\",
        \"editor.fontSize\": 16,
        \"editor.bracketPairColorization.enabled\": true,
        \"editor.formatOnSave\": true}"

echo $VS_CODE_SETTINGS > ~/Library/Application Support/Code/User/settings.json
