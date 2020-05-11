#!/bin/sh

# Install oh-my-zsh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Grab the oh-my-zsh theme
# TODO - make this more configurable
curl -H 'Accept: application/vnd.github.v4.raw' -L https://api.github.com/repos/blackmichael/gangly-theme/contents/gangly.zsh-theme -o $HOME/.oh-my-zsh/themes/gangly.zsh-theme

# Edit the $HOME/.zshrc file to change the theme
sed -E 's/ZSH_THEME="[a-zA-Z\-_]+"/ZSH_THEME="gangly"/' $HOME/.zshrc

# Install homebrew via curl
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install homebrew packages
# brew cask install caffeine
# brew cask install firefox
# brew cask install google-chrome
# brew cask install iterm2
# brew cask install slack
# brew cask install skype
# brew cask install java
# brew cask install intellij-idea
# brew cask install postman
# brew install dockutil
# brew install gpg
# brew install jq
# brew install wget
# brew install go

# Clean up the dock
# dockutil --remove
