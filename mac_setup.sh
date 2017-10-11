#!/usr/bin/env bash

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Cakebrew
brew cask install cakebrew

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

# What a show-off
brew install screenfetch

# Git & Git config
brew install git
git config --global credential.helper osxkeychain
git config --global user.email "angelospanag@gmail.com"
git config --global user.name "Angelos Panagiotopoulos"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global commit.gpgsign true

# Vim & Vim config
brew install vim --with-override-system-vi
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "colorscheme elflord" >> ~/.vimrc
echo "set backspace=indent,eol,start" >> ~/.vimrc

# I have horrible humour
brew install fortune
brew install cowsay
brew install lolcat
echo "fortune | cowsay -f dragon | lolcat" >> ~/.zshrc
brew install sl

# Go
brew install go
brew install dep
brew install glide
cd $HOME
mkdir go
echo "export GOPATH=\$HOME/go" >> ~/.zshrc
echo "export GOROOT=/usr/local/opt/go/libexec" >> ~/.zshrc
go get -u github.com/derekparker/delve/cmd/dlv
go get -u golang.org/x/tools/cmd/goimports

# Python
brew install python
brew install python3
echo "WORKON_HOME=\$HOME/Envs" >> ~/.zshrc

# PHP
# PHP 7.1
brew install homebrew/php/php71
echo "export PATH=\"\$(brew --prefix homebrew/php/php71)/bin:\$PATH\"" >> ~/.zshrc
brew install homebrew/php/composer
brew install homebrew/php/php-cs-fixer
brew install homebrew/php/psysh

# Node.js
brew install node
brew install yarn

# AWS
brew install awscli

# ApacheBench
brew install homebrew/apache/ab

# Brew cask apps
brew cask install atom
brew cask install fonts/font-fira-code
brew cask install google-chrome
brew cask install iterm2
brew cask install keepassx
brew cask install postman
brew cask install spectacle
brew cask install wire

# Visual Studio Code and extensions
brew cask install visual-studio-code
code --install-extension PeterJausovec.vscode-docker
code --install-extension bungcip.better-toml
code --install-extension donjayamanne.python
code --install-extension lukehoban.Go
code --install-extension robertohuertasm.vscode-icons
code --install-extension stevejpurves.cucumber
