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
source ~/.zshrc
go get -u github.com/derekparker/delve/cmd/dlv
go get -u golang.org/x/tools/cmd/goimports

# Python
brew install python
brew install python3
sudo easy_install pip
sudo pip install virtualenv
sudo pip install virtualenvwrapper --ignore-installed six
echo "WORKON_HOME=\$HOME/Envs" >> ~/.zshrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.zshrc

# Node.js
brew install node
brew install yarn

# Ruby
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
rbenv install 2.5.0
rbenv global 2.5.0

# Rails
gem install rails -v 5.1.4
rbenv rehash

# AWS
brew install awscli
sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-darwin-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli

# ApacheBench
brew install homebrew/apache/ab

# Brew cask apps
brew cask install atom
brew cask install fonts/font-fira-code
brew cask install google-chrome
brew cask install gpgtools
brew cask install iterm2
brew cask install java
brew cask install keepassx
brew cask install postman
brew cask install spectacle
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
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension PeterJausovec.vscode-docker
code --install-extension bungcip.better-toml
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.vscode-npm-script
code --install-extension lukehoban.Go
code --install-extension ms-python.python
code --install-extension robertohuertasm.vscode-icons
code --install-extension stevejpurves.cucumber

# Visual Studio Code user settings
echo "{" > $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"workbench.iconTheme\": \"vscode-icons\"," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"editor.fontFamily\": \"Fira Code\"," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"editor.fontSize\": 14," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"editor.fontLigatures\": true," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"editor.formatOnSave\": true," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"go.formatTool\": \"goimports\"," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"terminal.integrated.fontSize\": 14," >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "  \"terminal.integrated.fontFamily\": \"Menlo, Monaco, \'Courier New\', monospace\"" >> $HOME/Library/Application\ Support/Code/User/settings.json
echo "}" >> $HOME/Library/Application\ Support/Code/User/settings.json
