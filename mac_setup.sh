#!bin/bash

#Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Cakebrew
brew cask install cakebrew

#OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install m-cli
brew install nmap
brew install tree
brew install wget

#What a show-off
brew install screenfetch

#Git & Git config
brew install git
git config --global credential.helper osxkeychain
git config --global user.email "angelospanag@gmail.com"
git config --global user.name "Angelos Panagiotopoulos"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global commit.gpgsign true

#Vim & Vim config
brew install vim --with-override-system-vi
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "colorscheme elflord" >> ~/.vimrc

#I have horrible humour
brew install fortune
brew install cowsay
echo "fortune | cowsay -f vader" >> ~/.zshrc
brew install sl

#Go
brew install go
brew install glide
brew install delve

#Brew cask apps
brew tap caskroom/fonts
brew cask install atom
brew cask install font-fira-code
brew cask install google-chrome
brew cask install iterm2
brew cask install keepassx
brew cask install spectacle
#brew cask install slack
#brew cask install docker
#brew cask install vagrant
#brew cask install virtualbox
