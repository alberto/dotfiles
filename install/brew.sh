#!/bin/bash

brew tap homebrew/versions
brew tap homebrew/dupes

brew doctor

brew update
brew upgrade

brew install git
brew install bash-completion

brew cleanup
