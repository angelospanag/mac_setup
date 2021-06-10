#!/usr/bin/env bash

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Remove annoying console login message
touch ~/.hushlogin

# Generate new SSH keys
eval "$(ssh-agent -s)"
cd ~/ && mkdir .ssh
ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -C "angelospanag@gmail.com" -N ''

# SSH config
touch ~/.ssh/config
echo "Host *" >> ~/.ssh/config
echo " AddKeysToAgent yes" >> ~/.ssh/config
echo " UseKeychain yes" >> ~/.ssh/config
echo " IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config

# Add the new SSH keys to the keychain
chmod 400 ~/.ssh/id_rsa
ssh-add -K ~/.ssh/id_rsa

brew install jq
brew install m-cli
brew install nmap
brew install pwgen
brew install tree
brew install wget

# Need my music
brew install ffmpeg
brew install youtube-dl

# What a show-off
brew install neofetch

# Who am I?
echo "alias myip=\"curl ifconfig.me\"" >> ~/.zshrc

# Git & Git config
brew install git
git config --global credential.helper osxkeychain
git config --global user.email "angelospanag@protonmail.com"
git config --global user.name "Angelos Panagiotopoulos"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global commit.gpgsign true

# Vim & Vim config
brew install vim
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "colorscheme elflord" >> ~/.vimrc
echo "set backspace=indent,eol,start" >> ~/.vimrc

# Go
mkdir -p ~/go/bin
mkdir -p ~/go/src
echo "export GOPATH=~/go" >> ~/.zshrc
echo "export GOBIN=~/go/bin" >> ~/.zshrc
echo "export GOROOT=/usr/local/opt/go/libexec" >> ~/.zshrc
echo "export PATH=\$GOBIN:\"\$PATH\"" >> ~/.zshrc
source  ~/.zshrc

# Python
brew install python3
brew install poetry
brew install pyenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv

# Python 3.8 user base directory
echo "PYTHON_USER_BASE=\"\$HOME/Library/Python/3.9/bin\"" >> ~/.zshenv
echo "export PATH=\$PYTHON_USER_BASE:\$PATH" >> ~/.zshenv

# Install linting tools
pip3 install flake8 pep8-naming autopep8 --user

# Node.js
brew install node@14

# ApacheBench
brew install homebrew/apache/ab

# Brew cask apps
brew cask install firefox
brew install homebrew/cask-fonts/font-fira-code
brew cask install gpg-suite
brew cask install iterm2
brew cask install keepassxc
brew cask install postman
brew cask install vlc
brew cask install wire

# Gaming
brew cask install gog-galaxy
brew cask install steam

# Docker and Kitematic
brew cask install docker
brew cask install kitematic

# Visual Studio Code and extensions
brew cask install visual-studio-code
code --install-extension bungcip.better-toml
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension dbaeumer.vscode-eslint
code --install-extension hashicorp.terraform
code --install-extension kdcro101.favorites
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension njpwerner.autodocstring
code --install-extension oderwat.indent-rainbow
code --install-extension vscode-icons-team.vscode-icons
